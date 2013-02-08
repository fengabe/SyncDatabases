using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using Microsoft.SqlServer.SSIS.EzAPI;
using Microsoft.SqlServer.Dts.Design;
using Microsoft.SqlServer.Dts.Pipeline;
using Microsoft.SqlServer.Dts.Runtime;

namespace BuildingAPackage
{
    class EzLookupPackage : EzDataFlowPackage
    {
        //Source
        public EzOleDbSource Source;
        //Lookup Transform
        public EzLookup Lookup;
        //Destination
        public EzOleDbDestination Destination;
        //Connection Manager
        public EzSqlOleDbCM ScrConn;
        public EzSqlOleDbCM DestConn;

        public EzLookupPackage(string scrSvr, string scrDb, string dstSvr, string dstDb, string schemaAndTable, string[] lookupCondition)
            : base()
        {

            this.Name = "TestLookupPackage";
            this.DataFlow.Name = "Load New Rows";

            //Set Connection Managers
            ScrConn = new EzSqlOleDbCM(this);
            ScrConn.SetConnectionString(scrSvr, scrDb);
            ScrConn.Name = "Source";
            DestConn = new EzSqlOleDbCM(this);
            DestConn.SetConnectionString(dstSvr, dstDb);
            DestConn.Name = "Destination";

            //Create Dataflow
            Source = new EzOleDbSource(DataFlow);
            Source.Connection = ScrConn;
            Source.Table = schemaAndTable;
            //Source.SqlCommand = "SELECT * FROM dbo.T_Table1";
            Source.Name = "Get rows from source";

            //Configure Lookup
            Lookup = new EzLookup(DataFlow);
            Lookup.AttachTo(Source);
            Lookup.OleDbConnection = DestConn;
            Lookup.SqlCommand = "SELECT * FROM " + schemaAndTable;
            Lookup.SetJoinCols(lookupCondition);
            Lookup.NoMatchBehavor = NoMatchBehavior.SendToNoMatchOutput;
            Lookup.Name = "Check against Destination";

            //Send No Match Output to Destination
            Destination = new EzOleDbDestination(DataFlow);
            Destination.AttachTo(Lookup,1,0);
            Destination.Connection = DestConn;
            Destination.Table = schemaAndTable;
            Destination.Name = "Send new rows to Destination";

        }

        static void Main(string[] args)
        {
            //PolicyID, PolicyID|Unit_num, Unit_num
            string s = "State,State|County,County";
            string[] arr = s.Split("|".ToCharArray());

            EzLookupPackage pkg = new EzLookupPackage(".\\SQL2008R2", "Random", ".\\SQL2008R2", "Random", "dbo.MercalliUpdate",arr);

            pkg.SaveToFile(@"C:\Temp\TestLookupPackage.dtsx");
        }
    }

}
