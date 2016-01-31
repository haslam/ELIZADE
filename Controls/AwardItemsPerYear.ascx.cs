using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AwardItemsPerYear : BaseControl
{
    string yrid = "";
    string[] validFileTypes = { "jpg", "png" };
    protected void Page_Load(object sender, EventArgs e)
    {
        BindList();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string debitnoteno = "";
        if (HyperLink1.Enabled)
            debitnoteno = GridView1.Rows[e.RowIndex].Cells[1].Text;
        else
            debitnoteno = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        int res = DataService.Provider.DeleteItemOnYear(debitnoteno);
        if (res > 0)
        {
            ShowMessage("Record Deleted Successfully!");
            BindList();
        }
    }

    private void BindList()
    {
        if (Request.Params["yrid"] != null)
        {
            yrid = Request.Params["yrid"];

            GridView1.DataSource = DataService.Provider.GetAwardDetailsPerYearId(int.Parse(yrid));
            GridView1.DataBind();
        }
    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        if (Request.Params["yrid"] != null)
        {
            yrid = Request.Params["yrid"];
            UploadRefundDoc(FileUpload1, 1, int.Parse(yrid));
            Response.Redirect("/a.aspx?p=award-items-per-year&yrid=" + yrid,true);
        }
    }

    protected void BtnCancel_Click(object sender, EventArgs e)
    {

    }

    private void UploadRefundDoc(FileUpload f1, int ImageType, int ProductId)
    {
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
                    string file = "";
                    if (ext.ToUpper() == ".JPG")
                    {
                        f1.SaveAs(Page.MapPath("/AwardImages/" + imagefile));
                        file = Page.MapPath("/AwardImages/" + imagefile);
                    }
                    else if (ext.ToUpper() == ".PNG")
                    {
                        f1.SaveAs(Page.MapPath("/AwardImages/" + imagefile));
                        file = Page.MapPath("/AwardImages/" + imagefile);
                    }
                    else
                    {
                        msgBox1.alert("Please image can not be in other format than .jpg or .png");
                        return;
                    }

                    //switch (ImageType)
                    //{
                    //    case  3:
                    //        Util.ResizeImage(file, file, 0, 0, true); 
                    //        break;
                    //    default:
                    //        break;
                    //}

                    AwardDetail cp = new AwardDetail();
                    cp.AwardDescription = txtDescription.Text;
                    cp.AwardImageFile = imagefile;
                    cp.AwardTitle = txtTitle.Text;
                    cp.YearId = ProductId;
                    int result = DataService.Provider.SavAwardDetail(cp);
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
}