using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReviewerRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try{

        BookReviewDbEntities db = new BookReviewDbEntities();
        Reviewer r = new Reviewer();
        r.ReviewerFirstName = txtFirstName.Text;
        r.ReviewerLastName = txtLastName.Text;
        r.ReviewerEmail = txtEmail.Text;
        r.ReviewerUserName = txtUserName.Text;
        r.ReviewPlainPassword = txtPassword.Text;

        KeyCode kc = new KeyCode();
        int code = kc.GetKeyCode();
        r.ReviewerKeyCode = code;

        PasswordHash ph = new PasswordHash();
        Byte[] hashed = ph.HashIt(txtPassword.Text, code.ToString());
        r.ReviewerHashedPass = hashed;

        r.ReviewerDateEntered = DateTime.Now;

        db.Reviewers.Add(r);
        db.SaveChanges();
        lblErrorSuccess.Text = "Successfully Registered";
        }
        catch(Exception ex){
            lblErrorSuccess.Text = ex.Message;
        }
    }
}