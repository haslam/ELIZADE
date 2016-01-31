using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditBannerControl : BaseControl
{
    string bid = "";
    string ERROR_MSG = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["bid"] != null)
        {
            bid = Request.Params["bid"];
            Banner ban = DataService.Provider.GetBannerById(int.Parse(bid));
            if (ban != null)
            {
                lblId.Text = ban.id.ToString();
                txtBannerTitle.Text = ban.Title;
                txtDescription.Text = ban.Description;
                Image1.ImageUrl =  ban.ObjectOfDisplay;
                txtLink.Text = ban.Link;
                ddlObjectType.SelectedValue = ban.OODType.ToString();
                chkActive.Checked = (bool)ban.Active;
            }
        }
    }

    protected void lnkBtnSaveBanner_Click(object sender, EventArgs e)
    {
        Banner banner = new Banner();
        banner.id = int.Parse(lblId.Text.Trim());
        banner.Title = txtBannerTitle.Text.Trim();
        banner.Description = txtDescription.Text.Trim();
        banner.Link = txtLink.Text.Trim();
        banner.OODType = int.Parse(ddlObjectType.SelectedValue.Trim());
        banner.Active = chkActive.Checked;
        if (FileUpload1.HasFile)
        {
            banner.ObjectOfDisplay = GetUplaodedFile();
        }
        else
        {
            banner.ObjectOfDisplay = Image1.ImageUrl;
        }
        if (banner.ObjectOfDisplay == string.Empty)
        {
            return;
        }
        int result = DataService.Provider.UpdateBanner(banner);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "banner", true);
        }
    }

    private string GetUplaodedFile()
    {
        return UploadRefundDoc(FileUpload1);
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

    string[] validFileTypes = { "jpg", "png" };

    private string UploadRefundDoc(FileUpload f1)
    {
        bool checkDoc = false;
        if (f1.HasFile)
        {
            checkDoc = CheckDocRequired(f1, validFileTypes);
        }
        bool checksize = CheckForSize(f1);
        if (checkDoc == true && checksize == true)
        {

            string imagefile = System.DateTime.Now.ToString("ddMMyyyyHHmmss");
            string ext = System.IO.Path.GetExtension(f1.PostedFile.FileName);
            if (f1.HasFile)
            {

                if ((ext.ToLower() == ".jpg") || (ext.ToLower() == ".png"))
                {
                    f1.SaveAs(Server.MapPath("/images/Toyota/banner-images/" + imagefile + ext));
                    string file = Server.MapPath("/images/Toyota/banner-images/" + imagefile + ext);
                    Util.ResizeImage(file, file, 859, 320, true);
                    return "/images/Toyota/banner-images/" + imagefile + ext;
                }
                else
                {
                    msgBox1.alert("Please banner Image can not be in other format than .jpg or .png");
                    return string.Empty;
                }
            }
            else
            {
                imagefile = "no_image.jpg";
                return string.Empty;
            }
        }
        else if (checkDoc == false && checksize == true)
        {
            msgBox1.alert("Kindly select saved Passport Photograph in .jpg Format, The selected file is invalid!");
            return string.Empty;
        }
        else if (checkDoc == false && checksize == false)
        {
            msgBox1.alert("Bad Format and Size, Please select a Valid File!"); return string.Empty;
        }
        else if (checkDoc == true && checksize == false) { msgBox1.alert("File Limit Exceeded!"); return string.Empty; }
        else { return string.Empty; }
    }
}