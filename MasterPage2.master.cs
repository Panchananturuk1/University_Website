using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SetImageUrl();
        }

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();

    }

    private void SetImageUrl()
    {
        Random _rand = new Random();
        int i = _rand.Next(1, 10);
        Image2.ImageUrl = "~/cuo images/" + i.ToString() + ".jpg";
        Console.WriteLine("jhsdgs");
    }
}
