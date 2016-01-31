using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ManagementTeam : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DoManagement();
    }

    private void DoManagement()
    {
        StringBuilder sb = new StringBuilder();
        List<Member> bods = DataService.Provider.GetAllManagements();
        int cnt = 0;
        string start = "<div class='row grid-space-20 page-allmargin'> <div class='col-md-3 col-sm-6'>";
        string end = "</div> </div>";
        int met = 0;
        foreach (var item in bods)
        {
            met++;
            if (cnt == 0)
            {
                sb.Append(start);
                string newdata = string.Format(@"                            
                            <div class='box-style-1 white-bg team-member'>
                                <div class='overlay-container'>
                                    <img src='{0}' alt='{1}'>
                                    <div class='overlay'>
                                        <ul class='social-links colored clearfix'>
                                            <li class='link'>
                                                <button type='button' class='btn btn-plain btn-sm' data-toggle='modal' data-target='#assModal{4}'><i class='glyphicon glyphicon-eye-open'></i></button>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                <h3>{1}</h3>
                                {2}
                            </div>

                            <!-- Modal -->

                            <div class='modal fade' id='assModal{4}' tabindex='-1' role='dialog' aria-labelledby='assModalLabel' aria-hidden='true'>
                                <div class='modal-dialog'>
                                    <div class='modal-content'>
                                        <div class='modal-header'>
                                            <button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>
                                            <h4 class='modal-title' id='assModalLabel'>{1}</h4>
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
                            <!-- Modal End -->

                        </div>", item.PhotoFile, item.FullName, item.JobTitle, item.Bio, met);
                            sb.Append(newdata);
                            cnt++;
                        }
                        else
                        {
                            cnt++;
                            if (cnt == 4)
                            {
                                string newdata = string.Format(@"
                                <div class='col-md-3 col-sm-6'>
                              <div class='box-style-1 white-bg team-member'>
                                <div class='overlay-container'>
                                    <img src='{0}' alt='{1}'>
                                    <div class='overlay'>
                                        <ul class='social-links colored clearfix'>
                                            <li class='link'>
                                                <button type='button' class='btn btn-plain btn-sm' data-toggle='modal' data-target='#assModal{4}'><i class='glyphicon glyphicon-eye-open'></i></button>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                <h3>{1}</h3>
                                {2}
                            </div>

                            <!-- Modal -->

                            <div class='modal fade' id='assModal{4}' tabindex='-1' role='dialog' aria-labelledby='assModalLabel' aria-hidden='true'>
                                <div class='modal-dialog'>
                                    <div class='modal-content'>
                                        <div class='modal-header'>
                                            <button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>
                                            <h4 class='modal-title' id='assModalLabel'>{1}</h4>
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
                            <!-- Modal End -->", item.PhotoFile, item.FullName, item.JobTitle, item.Bio, met);
                    sb.Append(newdata);
                    sb.Append(end);
                    cnt = 0;
                }
                else
                {
                    string newdata = string.Format(@"
                    <div class='col-md-3 col-sm-6'>
                  <div class='box-style-1 white-bg team-member'>
                                <div class='overlay-container'>
                                    <img src='{0}' alt='{1}'>
                                    <div class='overlay'>
                                        <ul class='social-links colored clearfix'>
                                            <li class='link'>
                                                <button type='button' class='btn btn-plain btn-sm' data-toggle='modal' data-target='#assModal{4}'><i class='glyphicon glyphicon-eye-open'></i></button>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                <h3>{1}</h3>
                                {2}
                            </div>

                            <!-- Modal -->

                            <div class='modal fade' id='assModal{4}' tabindex='-1' role='dialog' aria-labelledby='assModalLabel' aria-hidden='true'>
                                <div class='modal-dialog'>
                                    <div class='modal-content'>
                                        <div class='modal-header'>
                                            <button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>
                                            <h4 class='modal-title' id='assModalLabel'>{1}</h4>
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
                            <!-- Modal End -->
                            </div>", item.PhotoFile, item.FullName, item.JobTitle, item.Bio, met);
                    sb.Append(newdata);
                }
            }
        }
        plhBODMembers.Controls.Add(new LiteralControl(sb.ToString()));
    }
}