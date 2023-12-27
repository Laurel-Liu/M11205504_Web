using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M11205504_Web.Report
{
    public partial class _default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = GetEmissionsData();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "window.print()", true);
        }

        private DataTable GetEmissionsData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Country", typeof(string));
            dt.Columns.Add("CO2_per_capita", typeof(double));

            // 添加數據
            dt.Rows.Add("Albania", 1.84462E-06);
            dt.Rows.Add("Andorra", 6.51705E-06);
            dt.Rows.Add("Austria", 7.18555E-06);
            dt.Rows.Add("Belarus", 6.63767E-06);
            dt.Rows.Add("Belgium", 8.82283E-06);
            dt.Rows.Add("Bosnia and Herzegovina", 6.66592E-06);
            dt.Rows.Add("Bulgaria", 5.16268E-06);
            dt.Rows.Add("Croatia", 3.40297E-06);
            dt.Rows.Add("Czechia", 8.84562E-06);
            dt.Rows.Add("Denmark", 6.11495E-06);
            dt.Rows.Add("Estonia", 1.34493E-05);
            // Faroe Islands is skipped due to missing data
            dt.Rows.Add("Finland", 1.22728E-05);
            dt.Rows.Add("France", 4.64723E-06);
            dt.Rows.Add("Germany", 8.88961E-06);
            dt.Rows.Add("Greece", 4.7405E-06);
            dt.Rows.Add("Hungary", 4.26355E-06);
            dt.Rows.Add("Iceland", 1.13415E-05);
            dt.Rows.Add("Ireland", 6.56613E-06);
            dt.Rows.Add("Italy", 5.08335E-06);
            dt.Rows.Add("Latvia", 5.2758E-06);
            dt.Rows.Add("Liechtenstein", 3.24565E-06);
            dt.Rows.Add("Lithuania", 4.50328E-06);
            dt.Rows.Add("Luxembourg", 1.57751E-05);
            dt.Rows.Add("Malta", 3.10218E-06);
            dt.Rows.Add("Moldova", 4.66606E-07);
            // Monaco is skipped due to missing data
            // Montenegro is skipped due to missing data
            dt.Rows.Add("Netherlands", 9.35454E-06);
            // North Macedonia is skipped due to missing data
            dt.Rows.Add("Norway", 9.59712E-06);
            dt.Rows.Add("Poland", 7.61461E-06);
            dt.Rows.Add("Portugal", 4.33661E-06);
            dt.Rows.Add("Romania", 3.19196E-06);
            dt.Rows.Add("Russia", 1.46962E-05);
            // San Marino is skipped due to missing data
            dt.Rows.Add("Serbia", 4.2195E-06);
            dt.Rows.Add("Slovakia", 6.2362E-06);
            dt.Rows.Add("Slovenia", 8.10141E-06);
            dt.Rows.Add("Spain", 5.26964E-06);
            dt.Rows.Add("Sweden", 4.60211E-06);
            dt.Rows.Add("Switzerland", 4.25654E-06);
            dt.Rows.Add("Ukraine", 5.27928E-06);
            dt.Rows.Add("United Kingdom", 5.8777E-06);
            // Vatican is skipped due to missing data

            // ... 添加更多數據行 ...

            return dt;
        }
    }
}
