using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Our_Board : System.Web.UI.UserControl
{
    public string  FounderName { get; set; }
    public string  FounderTitle { get; set; }
    public string FounderShortBio { get; set; }
    public string  FounderBio { get; set; }
    public string FounderPic { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        DoFounder();
        DoOthers();
    }

    private void DoOthers()
    {
        StringBuilder sb = new StringBuilder();
        List<Member> bods = DataService.Provider.GetAllOtherBoDs();
        int cnt = 0;
        string start = @"<div class='row grid-space-20 page-allmargin'><div class='col-sm-4'>";
        string end = "</div> </div>";
        int met = 0;
        foreach (var item in bods)
        {
            met++;
            if (cnt == 0)
            {
                sb.Append(start);
                string newdata = string.Format(@"
                            <div class='image-box team-member imagebox-nocolor '>
                            <div class='overlay-container'>
                                <img src='{0}' width='189px' height='252px' alt=''>
                                <div class='overlay'>
                                    <ul class='social-links colored clearfix'>
                                        <li class='link'>
                                            <button type='button' class='btn btn-plain btn-sm' data-toggle='modal' data-target='#chairmanModal{4}'><i class='glyphicon glyphicon-eye-open'></i></button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class='image-box-body'>
                                <h3 class='title'>{1}</h3>
                                <small>{2}</small>
                                <div class='separator-2'></div>

                            </div>
                        </div>
                        <!-- Modal -->

                        <div class='modal fade' id='chairmanModal{4}' tabindex='-1' role='dialog' aria-labelledby='chairmanModalLabel' aria-hidden='true'>
                            <div class='modal-dialog'>
                                <div class='modal-content'>
                                    <div class='modal-header'>
                                        <button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>
                                        <h4 class='modal-title' id='chairmanModalLabel'>{1}</h4>
                                    </div>
                                    <div class='modal-body'>
                                        <div class='thumbnail pull-left'>
                                            <img src='{0}' alt='{1}' class='img-circle thumbnail'>
                                        </div>
                                       {3}
                                    </div>
                                    <div class='modal-footer'>
                                        <button type='button' class='btn btn-sm btn-dark' data-dismiss='modal'>Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <!-- Modal End -->",  item.PhotoFile, item.FullName, item.JobTitle, item.Bio, met);
                sb.Append(newdata);
                cnt++;
            }
            else
            {
                cnt++;
                if (cnt == 3)
                {
                    string newdata = string.Format(@"
                        <div class='col-sm-4'>
                        <div class='image-box team-member imagebox-nocolor '>
                            <div class='overlay-container'>
                                <img src='{0}' width='189px' height='252px' alt=''>
                                <div class='overlay'>
                                    <ul class='social-links colored clearfix'>
                                        <li class='link'>
                                            <button type='button' class='btn btn-plain btn-sm' data-toggle='modal' data-target='#chairmanModal{4}'><i class='glyphicon glyphicon-eye-open'></i></button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class='image-box-body'>
                                <h3 class='title'>{1}</h3>
                                <small>{2}</small>
                                <div class='separator-2'></div>
                            </div>
                        </div>
                        <!-- Modal -->
                        <div class='modal fade' id='chairmanModal{4}' tabindex='-1' role='dialog' aria-labelledby='chairmanModalLabel' aria-hidden='true'>
                            <div class='modal-dialog'>
                                <div class='modal-content'>
                                    <div class='modal-header'>
                                        <button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>
                                        <h4 class='modal-title' id='chairmanModalLabel'>{1}</h4>
                                    </div>
                                    <div class='modal-body'>
                                        <div class='thumbnail pull-left'>
                                            <img src='{0}' alt='{1}' class='img-circle thumbnail'>
                                        </div>
                                       {3}
                                    </div>
                                    <div class='modal-footer'>
                                        <button type='button' class='btn btn-sm btn-dark' data-dismiss='modal'>Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <!-- Modal End -->",  item.PhotoFile, item.FullName, item.JobTitle, item.Bio, met);
                    sb.Append(newdata);
                    sb.Append(end);
                    cnt = 0;
                }
                else
                {
                    string newdata = string.Format(@"
                            <div class='col-sm-4'>
                                <div class='image-box team-member imagebox-nocolor '>
                                <div class='overlay-container'>
                                    <img src='{0}' width='189px' height='252px' alt=''>
                                    <div class='overlay'>
                                        <ul class='social-links colored clearfix'>
                                            <li class='link'>
                                                <button type='button' class='btn btn-plain btn-sm' data-toggle='modal' data-target='#chairmanModal{4}'><i class='glyphicon glyphicon-eye-open'></i></button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class='image-box-body'>
                                    <h3 class='title'>{1}</h3>
                                    <small>{2}</small>
                                    <div class='separator-2'></div>

                                </div>
                          </div>
                        <!-- Modal -->

                        <div class='modal fade' id='chairmanModal{4}' tabindex='-1' role='dialog' aria-labelledby='chairmanModalLabel' aria-hidden='true'>
                            <div class='modal-dialog'>
                                <div class='modal-content'>
                                    <div class='modal-header'>
                                        <button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>
                                        <h4 class='modal-title' id='chairmanModalLabel'>{1}</h4>
                                    </div>
                                    <div class='modal-body'>
                                        <div class='thumbnail pull-left'>
                                            <img src='{0}' alt='{1}' class='img-circle thumbnail'>
                                        </div>
                                       {3}
                                    </div>
                                    <div class='modal-footer'>
                                        <button type='button' class='btn btn-sm btn-dark' data-dismiss='modal'>Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <!-- Modal End -->",  item.PhotoFile, item.FullName, item.JobTitle, item.Bio, met);
                    sb.Append(newdata);
                }
            }
        }
        plhBODMembers.Controls.Add(new LiteralControl(sb.ToString()));
    }

    private void DoFounder()
    {
        Member curr = DataService.Provider.GetFounder();
        if (curr != null)
        {
            FounderPic = "/MemberPics/" + curr.PhotoFile;
            FounderTitle = curr.JobTitle;
            FounderShortBio = curr.ShortBio;
            FounderBio = curr.Bio;
            FounderName = curr.FullName;
        }
    }
}