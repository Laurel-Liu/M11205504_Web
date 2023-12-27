using System;
using System.Web.UI;

namespace M11205504_Web.Report2
{
    public partial class Report2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 在首次加載頁面時執行的代碼
            if (!IsPostBack)
            {
                // 可以在這裡添加任何需要在頁面首次加載時執行的代碼
            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            // 列印邏輯
            ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "window.print()", true);
        }
    }
}
