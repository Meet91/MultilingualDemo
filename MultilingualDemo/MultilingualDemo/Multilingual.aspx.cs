using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Reflection;

namespace MultilingualDemo
{
    public partial class Multilingual : System.Web.UI.Page
    {

        ResourceManager resourceManager;
        CultureInfo cultureInfo;


        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Lang"]==null)
            {
                Session["Lang"] = Request.UserLanguages[0];
            }
            if(!IsPostBack)
            {
                loadCulture();
            }
        }

        private void loadCulture()
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
            resourceManager = new ResourceManager("MultilingualDemo.App_GlobalResources.Lang", Assembly.GetExecutingAssembly());
            cultureInfo = Thread.CurrentThread.CurrentCulture;

           
            lblName.Text = resourceManager.GetString("Name", cultureInfo);
            lblEmail.Text = resourceManager.GetString("Email", cultureInfo);
            lblPhone.Text = resourceManager.GetString("Phone", cultureInfo);
            btnSubmit.Text = resourceManager.GetString("Submit", cultureInfo);
            btnReset.Text = resourceManager.GetString("Reset", cultureInfo);
        }

        protected void ddlLang_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Lang"] = ddlLang.SelectedValue;
            loadCulture();
        }
    }
}