using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddGalleryControl : BaseControl
{
    string cid = "";
    string[] validFileTypes = { "jpg", "png" };

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        UploadRefundDoc2(FileUpload1, 1, 0);
        Response.Redirect(Util.AdminUrl + "gallery", true);
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

    private void UploadRefundDoc2(FileUpload f1, int ImageType, int ProductId)
    {
        Gallery cp = new Gallery();

        string imagefile = null;
        bool checkDoc = true;// CheckDocRequired(f1, validFileTypes);
        bool checksize = true; // CheckForSize(f1);
        if (checkDoc == true && checksize == true)
        {
            string ext = System.IO.Path.GetExtension(f1.PostedFile.FileName);
            if (f1.HasFiles)
            {
                int res = DataService.Provider.RemoveOldPhotos(ImageType, ProductId);

                foreach (HttpPostedFile uploadedFile in f1.PostedFiles)
                {
                    imagefile = uploadedFile.FileName;

                    string file = "";
                    if (ext.ToUpper() == ".JPG")
                    {
                        uploadedFile.SaveAs(Page.MapPath("/images/Gallery/" + imagefile));
                        uploadedFile.SaveAs(Page.MapPath("/images/Gallery/thumb/" + imagefile));
                        file = Page.MapPath("/images/Gallery/thumb/" + imagefile);
                        Util.ResizeImage(file, file, 0, 0, true);
                        cp.ImageFile = imagefile;
                        cp.thumbImage = imagefile;
                    }
                    else if (ext.ToUpper() == ".PNG")
                    {
                        uploadedFile.SaveAs(Page.MapPath("/images/Gallery/" + imagefile));
                        uploadedFile.SaveAs(Page.MapPath("/images/Gallery/thumb/" + imagefile));
                        file = Page.MapPath("/images/Gallery/thumb/" + imagefile);
                        Util.ResizeImage(file, file, 0, 0, true);
                        cp.ImageFile = imagefile;
                        cp.thumbImage = imagefile;
                    }
                    else
                    {
                        msgBox1.alert("Please image can not be in other format than .jpg or .png");
                        return;
                    }

                    cp.ProductLink = txtProductLink.Text;
                    cp.ProductName = txtProductName.Text;
                    int result = DataService.Provider.SaveGallery(cp);
                    imagefile = "";
                }
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