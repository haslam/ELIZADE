using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_UploadCV : BaseControl
{
    string action = "";
    string[] validFileTypes = { "doc", "docx", "pdf" };
    string Role = "";
    Hashtable myHospitals = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        UploadRefundDoc(uploadcv, "");
        msgBox1.alert("CV submitted successfully!");
        Response.Redirect(Util.BaseSiteUrl + "p.aspx?p=home&msg=CV submitted successfully!");
    }

    private bool CheckForSize(FileUpload fuDocrequired)
    {
        bool file_ok = false;

        if (fuDocrequired.HasFile)
        {
            // Get the size in bytes of the file to upload.
            int fileSize = fuDocrequired.PostedFile.ContentLength;

            // Allow only files less than 2,100,000 bytes (approximately 1 MB) to be uploaded.
            if (fileSize < Util.ConfigFilesize)
            {
                file_ok = true;
            }
        }
        return file_ok;
    }


    private bool CheckDocRequired(FileUpload fuDocrequired, string[] validFileTypes)
    {
        int valid_up = 0;
        if (1 == 1)
        {
            int has_file = 0;
            if (fuDocrequired.HasFile)
            {
                ++has_file;
                string ext = System.IO.Path.GetExtension(fuDocrequired.PostedFile.FileName);
                bool isValidFile = false;
                for (int j = 0; j < validFileTypes.Length; j++)
                {
                    if (ext.ToLower() == "." + validFileTypes[j].ToLower())
                    {
                        isValidFile = true;
                        //lblStatus.Text = "Valid";
                        ++valid_up;
                        break;
                    }
                }
                if (!isValidFile)
                {
                    //lblStatus.Text = "Not Valid";
                    //lblUP_Error.Text = "Invalid File. Please upload a File with extension " + string.Join(",", validFileTypes);
                }
            }
            else { }
        }
        return (valid_up > 0) ? true : false;
    }

    private void UploadRefundDoc(FileUpload f1, string doc_code)
    {
        string file ="";
        if (f1.HasFile)
        {
            bool checkDoc = CheckDocRequired(f1, validFileTypes);
            bool checksize = CheckForSize(f1);
            if (checkDoc == true && checksize == true)
            {
                string imagefile = null;
                imagefile = f1.PostedFile.FileName;
                string ext = System.IO.Path.GetExtension(f1.PostedFile.FileName);
                if (f1.HasFile)
                {
                    string snow = DateTime.Now.ToString("ddMMyyyyHms");
                    f1.SaveAs(Page.MapPath("/resume/" + snow  + ext));
                    file = Page.MapPath("/resume/" + snow +   ext);


                    CVUploadEx cp = new CVUploadEx();
                    cp.AdditionalInfo = additionaltxt.Text; ;
                    cp.cvFile = Util.BaseSiteUrl + "resume/" + snow  + ext;
                    cp.Id = 0;
                    cp.Email = emailtxt.Text;
                    cp.FullName = fullname.Text;
                    cp.PhoneNo = phonetxt.Text;
                    int result = DataService.Provider.SaveCVUploadEx(cp);
                }
                else
                {
                    imagefile = "no_image.jpg";
                }
            }
            else if (checkDoc == false && checksize == true)
            {
                msgBox1.alert("Kindly select an image in .jpg or .png Format, The selected file is invalid!");
                return;
            }
            else if (checkDoc == false && checksize == false)
            {
                msgBox1.alert("Bad Format and Size, Please select a Valid File!");
                return;
            }
            else if (checkDoc == true && checksize == false)
            {
                msgBox1.alert("File Limit Exceeded!");
                return;
            }
            else { return; }
        }
    }
}