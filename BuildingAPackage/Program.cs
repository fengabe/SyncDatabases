using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.SqlServer.SSIS.EzAPI;
using Microsoft.SqlServer.Dts.Design;
using Microsoft.SqlServer.Dts.Pipeline;
using Microsoft.SqlServer.Dts.Runtime;

namespace BuildingAPackage
{
    class EzOleDbToOleDb : EzSrcDestPackage<EzOleDbSource, EzSqlOleDbCM, EzOleDbDestination, EzSqlOleDbCM>
    {
        public EzOleDbToOleDb(string srcSvr, string srcDb, string srcTable, string dstSvr, string dstDb, string dstTable)
            : base()
        {
            SrcConn.SetConnectionString(srcSvr, srcDb);
            Source.Table = srcTable;

            DestConn.SetConnectionString(dstSvr, dstDb);
            Dest.Table = dstTable;
        }


        static void Main(string[] args)
        {
            EzOleDbToOleDb pkg = new EzOleDbToOleDb("(local)\\SQL2008R2", "Random", "T_LU_COUNTY", "(local)\\SQL2008R2", "Random", "NewSchema.TestTable");

            pkg.SaveToFile(@"TestPackageWithSchema.dtsx");

            pkg.Execute();
        }
    }
}
