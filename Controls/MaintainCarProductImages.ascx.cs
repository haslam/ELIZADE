using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_MaintainCarProductImages : BaseControl
{
    string cid = "";
    string[] validFileTypes = { "jpg", "png" };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];
            BuildControls(int.Parse(cid));
        }
    }

    private void BuildControls(int carProductId)
    {
        GetDetailHead(carProductId);
        GetMenuImage(carProductId);
        GetInteriorImages(carProductId);
        GetExteriorImages(carProductId);
    }

    private void GetExteriorImages(int carProductId)
    {
        //type =  2
        List<CarPhoto> list = DataService.Provider.GetCarPhotosBy(carProductId, 2);
        if (list != null)
        {
            rptExterior.DataSource = list;
            rptExterior.DataBind();
        }
    }

    private void GetInteriorImages(int carProductId)
    {
        //type =  1
        List<CarPhoto> list = DataService.Provider.GetCarPhotosBy(carProductId, 1);
        if (list != null)
        {
            rptInterior.DataSource = list;
            rptInterior.DataBind();
        }
    }

    private void GetMenuImage(int carProductId)
    {
        //type =  3
        CarPhoto cr = DataService.Provider.GetCarPhotoBy(carProductId, 3);
        if (cr != null)
        {
            Image1.ImageUrl = "/ProductImages/" + cr.PhotoFilename;
        }
    }

    private void GetDetailHead(int carProductId)
    {
        //type =  4
        CarPhoto cr = DataService.Provider.GetCarPhotoBy(carProductId, 4);
        if (cr != null)
        {
            Image2.ImageUrl = "/ProductImages/" + cr.PhotoFilename;
        }
    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        //type =  2
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];
            UploadRefundDoc2(FUExternalImages, 2, int.Parse(cid.Trim()));
        }
    }

    protected void BtnDetailHead_Click(object sender, EventArgs e)
    {
        //type =  4
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];
            UploadRefundDoc(FUDetailImage, 4, int.Parse(cid.Trim()));
        }

    }
    protected void BtnMenuImage_Click(object sender, EventArgs e)
    {
        //type =  3
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];
            UploadRefundDoc(FuMenuImage, 3, int.Parse(cid.Trim()));
        }


    }
    protected void BtnSaveInteriorImages_Click(object sender, EventArgs e)
    {
        //type =  1
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];
            UploadRefundDoc2(FUInternalImages, 1, int.Parse(cid.Trim()));
        }
    }
    protected void rptExterior_ItemCreated(object sender, RepeaterItemEventArgs e)
    {

    }
    protected void rptInterior_ItemCreated(object sender, RepeaterItemEventArgs e)
    {

    }

    private void UploadRefundDoc(FileUpload f1, int ImageType, int ProductId)
    {
        if (f1.HasFile)
        {
            bool checkDoc = CheckDocRequired(f1, validFileTypes);
            bool checksize =  CheckForSize(f1);
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
                        f1.SaveAs(Page.MapPath("/ProductImages/" + imagefile));
                        file = Page.MapPath("/ProductImages/" + imagefile);
                    }
                    else if (ext.ToUpper() == ".PNG")
                    {
                        f1.SaveAs(Page.MapPath("/ProductImages/" + imagefile));
                        file = Page.MapPath("/ProductImages/" + imagefile);
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

                    CarPhoto cp = new CarPhoto();
                    cp.Active = true;
                    cp.Alt = "";
                    cp.Id = 0;
                    cp.IsMenuImage = (ImageType == 3) ? true : false;
                    cp.PhotoType = ImageType;
                    cp.PhotoFilename = imagefile;
                    cp.ProductId = ProductId;
                    int result = DataService.Provider.SaveMenuImageData(cp);
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


    private void UploadRefundDoc2(FileUpload f1, int ImageType, int ProductId)
    {
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
                        uploadedFile.SaveAs(Page.MapPath("/ProductImages/" + imagefile));
                        uploadedFile.SaveAs(Page.MapPath("/ProductImages/thumb/" + imagefile));
                        file = Page.MapPath("/ProductImages/thumb/" + imagefile);
                        Util.ResizeImage(file, file, 0, 0, true); 
                    }
                    else if (ext.ToUpper() == ".PNG")
                    {
                        uploadedFile.SaveAs(Page.MapPath("/ProductImages/" + imagefile));
                        uploadedFile.SaveAs(Page.MapPath("/ProductImages/thumb/" + imagefile));
                        file = Page.MapPath("/ProductImages/thumb/" + imagefile);
                        Util.ResizeImage(file, file, 0, 0, true); 
                    }
                    else
                    {
                        msgBox1.alert("Please image can not be in other format than .jpg or .png");
                        return;
                    }

                    CarPhoto cp = new CarPhoto();
                    cp.Active = true;
                    cp.Alt = "";
                    cp.Id = 0;
                    cp.IsMenuImage = (ImageType == 3) ? true : false;
                    cp.PhotoType = ImageType;
                    cp.PhotoFilename = imagefile;
                    cp.ProductId = ProductId;
                    int result = DataService.Provider.SaveMenuImageData2(cp);
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