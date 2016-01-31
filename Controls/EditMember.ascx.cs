using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditMember : System.Web.UI.UserControl
{
    string bid = ""; string action = "";
    string[] validFileTypes = { "jpg", "png" };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["action"] != null)
        {
            action = Request.Params["action"];
            if (int.Parse(action) == 1)
            {
                bid = Request.Params["mid"];
            }
        }
        if (Page.IsPostBack == false)
        {
            if (bid != "")
            {

                Member dnd = DataService.Provider.GetMemberById(int.Parse(bid));
                if (dnd.PhotoFile != null) { Image1.ImageUrl = "/MemberPics/" + dnd.PhotoFile.ToString().Replace("\\", "/"); }
                txtBody.Text = dnd.Bio;
                txtJobTitle.Text = dnd.JobTitle;
                txtShortBio.Text = dnd.ShortBio;
                txtFullName.Text = dnd.FullName;
                chkIsFounder.Checked = (bool)dnd.IsFounder;
                chkIsManagement.Checked = (bool)dnd.isManagement;
                chkIsBoardMember.Checked = (bool)dnd.isBoardMember;
                ddlTitle.SelectedValue = dnd.Title;
            }
        }
    }

    private string GetSavedFileName(FileUpload f1)
    {
        string medical_id = DateTime.Now.ToString("yyyyMMddHmms");
        string doc_code = "0000";
        string immagefille = "";
        string imagefile = null;
        string ext = System.IO.Path.GetExtension(f1.PostedFile.FileName);
        if (f1.HasFile)
        {
            Hashtable fed = new Hashtable();
            fed.Add("0000", "0000");

            if (fed.Contains(doc_code))
            {
                if ((ext.ToUpper() == ".JPG") || (ext.ToUpper() == ".PNG"))
                {
                    imagefile = medical_id + "_" + doc_code;
                    //file.SaveAs(Page.MapPath("~/DOCUMENT_REPO/" + imagefile + ".jpg"));
                    f1.SaveAs(Page.MapPath("/MemberPics/" + imagefile + ext));
                    string file = Page.MapPath("/MemberPics/" + imagefile + ext);
                    immagefille = imagefile + ext;
                    // Util.ResizeMemberImage(file, file, 0, 0, true);   
                    return immagefille;
                }
                else
                {
                    //msgBox1.alert("Please Passport can not be in other format than .jpg");
                    return string.Empty;
                }
            }
        }
        else
        {
            imagefile = "no_image.jpg";
            return imagefile;
        }
        return string.Empty;
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        Member curr = new Member();
        if (FileUpload1.HasFile && GetUploadedImage(FileUpload1))
        {
            string fileName = GetSavedFileName(FileUpload1);
            if (fileName != string.Empty)
            {
                if (Request.Params["action"] != null)
                {
                    action = Request.Params["action"];
                    bid = Request.Params["mid"];
                    curr.PhotoFile = GetSavedFileName(FileUpload1);
                }
            }
        }
        else
        {
            if (string.IsNullOrEmpty(Image1.ImageUrl))
            {
                msgBox1.alert("Please add picture for this member");
                return;
            }
            else
            {
                curr.PhotoFile = Image1.ImageUrl.Replace("~/MemberPics/", "");
            }
        }
        curr.Title = ddlTitle.SelectedValue;
        curr.FullName = txtFullName.Text;
        curr.Bio = txtBody.Text;
        curr.ShortBio = txtShortBio.Text;
        curr.JobTitle = txtJobTitle.Text;
        curr.IsFounder = chkIsFounder.Checked;
        curr.isManagement = chkIsManagement.Checked;
        curr.isBoardMember = chkIsFounder.Checked;
        curr.CreateBy = (int)1;
        curr.CreateDate = DateTime.Now;
        curr.Id = int.Parse(bid);
        int result = DataService.Provider.UpdateMember(curr);
        if (result > 0)
        {
            if (curr.isBoardMember == true)
            {
                Response.Redirect(Util.AdminUrl + "board-of-director", true);
            }
            else { Response.Redirect(Util.AdminUrl + "management-profile", true); }
        }
    }

    private bool GetUploadedImage(FileUpload f1)
    {
        string immagefille = "";
        string medical_id = DateTime.Now.ToString("yyyyMMddHmms");
        string doc_code = "0000";
        bool has_value = false;
        if (f1.HasFile) { has_value = true; }
        if (has_value)
        {
            Hashtable fed = new Hashtable();
            fed.Add("0000", "0000");
            bool checkDoc = false;
            if (doc_code == "0000") { checkDoc = CheckDocRequired(f1, validFileTypes); }
            bool checksize = CheckForSize(f1);
            if (checkDoc == true && checksize == true)
            {

                string imagefile = null;
                string ext = System.IO.Path.GetExtension(f1.PostedFile.FileName);
                if (f1.HasFile)
                {
                    if (fed.Contains(doc_code))
                    {
                        if ((ext.ToUpper() == ".JPG") || (ext.ToUpper() == ".PNG"))
                        {
                            return true;
                        }
                    }
                }
            }
            else if (checkDoc == false && checksize == true)
            {
                if (doc_code == "0000")
                {
                    msgBox1.alert("Kindly select saved Passport Photograph in Jpg Format, The selected file is invalid!");
                    return false;
                }
            }
            else if (checkDoc == false && checksize == false)
            {
                msgBox1.alert("Bad Format and Size, Please select a Valid File!"); return false;
            }
            else if (checkDoc == true && checksize == false) { msgBox1.alert("File Limit Exceeded!"); return false; }
            else { return false; }
        }
        return false;

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
                    if (ext == "." + validFileTypes[j])
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
}