<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/WEB-INF/views/common/tag.jsp"%>
<!DOCTYPE>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="/WEB-INF/views/common/js.jsp"%>
<%@include file="/WEB-INF/views/common/css.jsp"%>
<link href="${ctx}/assets/css/base_common.css" rel="stylesheet" />
<link href="${ctx}/assets/css/base_outer.css" rel="stylesheet" />
<link href="${ctx}/assets/css/base_club.css" rel="stylesheet" />
<link id="linkRoot" href="/cloudaction">
<title>首页</title>
</head>
<html>
 <head></head>
 <body class="page_index"> 
  <!-- navbar --> 
  <c:import url="common/header.jsp"></c:import> 
  <!-- end narbar --> 
  <div id="wrap-all"> 
   <div id="main" class="inner"> 
    <div data-ng-controller="forum_category_ctrl" class="ng-scope"> 
     <div class="page_navbar"> 
      <div class="page-navbar-warp"> 
       <div class="title"> 
        <h3> <a href="/club"> <i class="icon-comments-alt mr_10"></i> 用户社区 </a> </h3> 
       </div> 
       <div class="main"> 
        <div class="toolbar_panel pull-right"> 
         <a class="btn btn-danger" href="/club/draft?category=0" target="_self">我要发帖</a> 
        </div> 
       </div> 
      </div> 
     </div> 
     <div class="forum-panel"> 
      <div class="forum-container"> 
       <div class="col-xs-12 col-sm-9"> 
        <div class="mb_10"> 
         <a href="https://worktile.com/club/news/be13b34f499f41e8be6970c3d21d01af"> <img src="https://dn-wtbox.qbox.me/img/club/community_home_banner.jpg" width="705" alt="Worktile Android v3.0.0已经在各大安卓市场发布啦" /> </a> 
        </div> 
        <div class="forum-content"> 
         <div class="forum-category-wrapper"> 
          <div class="forum-heading"> 
           <h3>所有帖子</h3> 
          </div> 
          <div class="thread-list" ng-init="threads_stats={}"> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" alt="Samye" src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/news/be13b34f499f41e8be6970c3d21d01af"> <span class="forum-badge">推荐</span> Worktile Android v3.0.0已经在各大安卓市场发布啦 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">512</span>--> 
                 <span class="thread-total-comment">18</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name || 'UnmetUser'" class="ng-binding">Samye</span> 发布于 
                 <span ng-bind="1414769220869|fromNow" class="ng-binding">10-31 23:27</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415086357396|fromNow" class="ng-binding">今天 15:32</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/77599273-e616-4e3d-879c-c5479c111546.jpeg" alt="op小泽马" src="https://wt-avatars.oss.aliyuncs.com/40/77599273-e616-4e3d-879c-c5479c111546.jpeg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/news/0eb9e5213489457c9d0480d102c8d116"> <span class="forum-badge">推荐</span> 【召集帖】Worktile 的铁粉们，请给自己来个高大上的昵称吧！ </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">759</span>--> 
                 <span class="thread-total-comment">45</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['63a4c31ff77584'].display_name || 'UnmetUser'" class="ng-binding">op小泽马</span> 发布于 
                 <span ng-bind="1411983974505|fromNow" class="ng-binding">09-29 17:46</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '20e2e1efca05435484fad46602d40e2a' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'20e2e1efca05435484fad46602d40e2a'"> 
                 <span ng-bind="clubUsers['20e2e1efca05435484fad46602d40e2a'].display_name" class="ng-binding">Wen Song</span> 最后回复于 
                 <span ng-bind="1415038274026|fromNow" class="ng-binding">今天 02:11</span> 
                </div> 
                <!-- end ngIf: '20e2e1efca05435484fad46602d40e2a' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/36ccf3f7-ac14-4b04-807c-a029ede5a1ff.jpg" alt="JellyBool" src="https://wt-avatars.oss.aliyuncs.com/40/36ccf3f7-ac14-4b04-807c-a029ede5a1ff.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/skills/059df020117340f2976dcdd3f6f98263"> <span class="forum-badge">推荐</span> 炫酷贴---检查项的炫酷功能 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">73</span>--> 
                 <span class="thread-total-comment">4</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['13d6c8bf034541'].display_name || 'UnmetUser'" class="ng-binding">JellyBool</span> 发布于 
                 <span ng-bind="1414982963501|fromNow" class="ng-binding">11-03 10:49</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1414988630325|fromNow" class="ng-binding">11-03 12:23</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/b6bd371c9f2148da8330ba665e3350a9.jpg" alt="Worktile" src="https://wt-avatars.oss.aliyuncs.com/40/b6bd371c9f2148da8330ba665e3350a9.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/tutorial/15ac563d7447f6"> <span class="forum-badge">推荐</span> 新手上路指南，帮你快速上手Worktile </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">1884</span>--> 
                 <span class="thread-total-comment">12</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['62852874717fd4'].display_name || 'UnmetUser'" class="ng-binding">Worktile</span> 发布于 
                 <span ng-bind="1403855255149|fromNow" class="ng-binding">06-27 15:47</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '13d6c8bf034541' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'13d6c8bf034541'"> 
                 <span ng-bind="clubUsers['13d6c8bf034541'].display_name" class="ng-binding">JellyBool</span> 最后回复于 
                 <span ng-bind="1411112177365|fromNow" class="ng-binding">09-19 15:36</span> 
                </div> 
                <!-- end ngIf: '13d6c8bf034541' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/36ccf3f7-ac14-4b04-807c-a029ede5a1ff.jpg" alt="JellyBool" src="https://wt-avatars.oss.aliyuncs.com/40/36ccf3f7-ac14-4b04-807c-a029ede5a1ff.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/tutorial/d5003cd3d8ae4033a75cc285fee60d04"> Webhook小科普 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">37</span>--> 
                 <span class="thread-total-comment">4</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['13d6c8bf034541'].display_name || 'UnmetUser'" class="ng-binding">JellyBool</span> 发布于 
                 <span ng-bind="1415080707679|fromNow" class="ng-binding">今天 13:58</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '64c06441db3ad0' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'64c06441db3ad0'"> 
                 <span ng-bind="clubUsers['64c06441db3ad0'].display_name" class="ng-binding">丁学</span> 最后回复于 
                 <span ng-bind="1415089822798|fromNow" class="ng-binding">今天 16:30</span> 
                </div> 
                <!-- end ngIf: '64c06441db3ad0' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/77599273-e616-4e3d-879c-c5479c111546.jpeg" alt="op小泽马" src="https://wt-avatars.oss.aliyuncs.com/40/77599273-e616-4e3d-879c-c5479c111546.jpeg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/ycbar/b5fbb720b6054108b74645487c946c0f"> 褪墨网推荐：使用 Worktile 实践高效团队协作 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">228</span>--> 
                 <span class="thread-total-comment">5</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['63a4c31ff77584'].display_name || 'UnmetUser'" class="ng-binding">op小泽马</span> 发布于 
                 <span ng-bind="1407124178708|fromNow" class="ng-binding">08-04 11:49</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415088883107|fromNow" class="ng-binding">今天 16:14</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/133b0db7-82ce-4919-8e7d-47c49203b0e6.jpg" alt="俊吉" src="https://wt-avatars.oss.aliyuncs.com/40/133b0db7-82ce-4919-8e7d-47c49203b0e6.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/feedback/94a88a615f804d62be933fb8fe0cd64d"> 工作台问题 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">8</span>--> 
                 <span class="thread-total-comment">1</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['372de017858d423eadf417d37f2b28cd'].display_name || 'UnmetUser'" class="ng-binding">俊吉</span> 发布于 
                 <span ng-bind="1415082124926|fromNow" class="ng-binding">今天 14:22</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415087252019|fromNow" class="ng-binding">今天 15:47</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/2d7a6f7b-54e8-4438-a970-d21e38ecfead.jpg" alt="Zorn" src="https://wt-avatars.oss.aliyuncs.com/40/2d7a6f7b-54e8-4438-a970-d21e38ecfead.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/feedback/2f048a9efba3411e9a60c17294c1c95c"> 关于文档——图片不能放大问题 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">4</span>--> 
                 <span class="thread-total-comment">1</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['59079328baef40a780cd3f39f8683ff3'].display_name || 'UnmetUser'" class="ng-binding">Zorn</span> 发布于 
                 <span ng-bind="1415085947558|fromNow" class="ng-binding">今天 15:25</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415087066106|fromNow" class="ng-binding">今天 15:44</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/a3600ef8-0602-482d-96a4-eba9d0d8eb03.png" alt="张宏" src="https://wt-avatars.oss.aliyuncs.com/40/a3600ef8-0602-482d-96a4-eba9d0d8eb03.png" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/feedback/9a50b078440c4fb081a17c36692636c9"> iPAD上Web反应异常 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">29</span>--> 
                 <span class="thread-total-comment">3</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['94a9a901cce74bfe8761c40170ef44f8'].display_name || 'UnmetUser'" class="ng-binding">张宏</span> 发布于 
                 <span ng-bind="1415014734055|fromNow" class="ng-binding">11-03 19:38</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '372de017858d423eadf417d37f2b28cd' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'372de017858d423eadf417d37f2b28cd'"> 
                 <span ng-bind="clubUsers['372de017858d423eadf417d37f2b28cd'].display_name" class="ng-binding">俊吉</span> 最后回复于 
                 <span ng-bind="1415081647060|fromNow" class="ng-binding">今天 14:14</span> 
                </div> 
                <!-- end ngIf: '372de017858d423eadf417d37f2b28cd' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/6d5c35d2-4f53-4a9e-8da4-9d2254fd398d.jpg" alt="曹亮" src="https://wt-avatars.oss.aliyuncs.com/40/6d5c35d2-4f53-4a9e-8da4-9d2254fd398d.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/feedback/85e17523d8214cdd80f5cf81110a2b22"> 非常严重的功能设计缺陷 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">127</span>--> 
                 <span class="thread-total-comment">10</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['186d3041bb6a4bed98a04d7d827499b7'].display_name || 'UnmetUser'" class="ng-binding">曹亮</span> 发布于 
                 <span ng-bind="1414735924230|fromNow" class="ng-binding">10-31 14:12</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '71dcd8801603406e89846faeb06add09' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'71dcd8801603406e89846faeb06add09'"> 
                 <span ng-bind="clubUsers['71dcd8801603406e89846faeb06add09'].display_name" class="ng-binding">ricky</span> 最后回复于 
                 <span ng-bind="1415074752101|fromNow" class="ng-binding">今天 12:19</span> 
                </div> 
                <!-- end ngIf: '71dcd8801603406e89846faeb06add09' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/default_avatar.png" alt="王天翔" src="https://wt-avatars.oss.aliyuncs.com/40/default_avatar.png" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/feedback/e881e68c2e8d4329841a8274f3b0bbc3"> 文件功能 希望能加入版本管理 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">20</span>--> 
                 <span class="thread-total-comment">2</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['67a30edc0a274ad6928bb39f4900462c'].display_name || 'UnmetUser'" class="ng-binding">王天翔</span> 发布于 
                 <span ng-bind="1415069262428|fromNow" class="ng-binding">今天 10:47</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415073993577|fromNow" class="ng-binding">今天 12:06</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" alt="Samye" src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/news/21e4fd364e304203b848bf45b3e260e1"> Worktile Android v3.0在最美应用开启内测啦～ </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">332</span>--> 
                 <span class="thread-total-comment">9</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name || 'UnmetUser'" class="ng-binding">Samye</span> 发布于 
                 <span ng-bind="1414501393849|fromNow" class="ng-binding">10-28 21:03</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415068999415|fromNow" class="ng-binding">今天 10:43</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/91df8da1-7b3a-48aa-abfc-add60d6eb13b.jpg" alt="田宇" src="https://wt-avatars.oss.aliyuncs.com/40/91df8da1-7b3a-48aa-abfc-add60d6eb13b.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/news/e7d122572ecd4cd58afa6380cec6867d"> 【非官方】Worktile for windows </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">686</span>--> 
                 <span class="thread-total-comment">20</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['59a08e046af718'].display_name || 'UnmetUser'" class="ng-binding">田宇</span> 发布于 
                 <span ng-bind="1410242678632|fromNow" class="ng-binding">09-09 14:04</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415067599467|fromNow" class="ng-binding">今天 10:19</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/c7df7799-3d8d-4890-be49-83ffa31c81bc.jpg" alt="高仁华" src="https://wt-avatars.oss.aliyuncs.com/40/c7df7799-3d8d-4890-be49-83ffa31c81bc.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/feedback/d0b045fa403f4eec8bcf17ec7a9de71d"> 这个团队协同工具真的很好用 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">46</span>--> 
                 <span class="thread-total-comment">2</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['55d401659d6b4b11a9c1a909b148765c'].display_name || 'UnmetUser'" class="ng-binding">高仁华</span> 发布于 
                 <span ng-bind="1414637676058|fromNow" class="ng-binding">10-30 10:54</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '218fa56e1ca39a' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'218fa56e1ca39a'"> 
                 <span ng-bind="clubUsers['218fa56e1ca39a'].display_name" class="ng-binding">anytao</span> 最后回复于 
                 <span ng-bind="1415067594266|fromNow" class="ng-binding">今天 10:19</span> 
                </div> 
                <!-- end ngIf: '218fa56e1ca39a' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" alt="Samye" src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/ycbar/fc9219615b5342078f8857bd355443f4"> Worktile Share：互联网时代的工作方式 by anytao </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">279</span>--> 
                 <span class="thread-total-comment">10</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name || 'UnmetUser'" class="ng-binding">Samye</span> 发布于 
                 <span ng-bind="1409899578736|fromNow" class="ng-binding">09-05 14:46</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415067390726|fromNow" class="ng-binding">今天 10:16</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/77599273-e616-4e3d-879c-c5479c111546.jpeg" alt="op小泽马" src="https://wt-avatars.oss.aliyuncs.com/40/77599273-e616-4e3d-879c-c5479c111546.jpeg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/skills/abcffb1ac7954734a07ef9dc6ef61a2f"> 如何把在微信，知乎上看到的好文章分享给你的小伙伴们 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">485</span>--> 
                 <span class="thread-total-comment">11</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['63a4c31ff77584'].display_name || 'UnmetUser'" class="ng-binding">op小泽马</span> 发布于 
                 <span ng-bind="1405486247494|fromNow" class="ng-binding">07-16 12:50</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415067334358|fromNow" class="ng-binding">今天 10:15</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/4f2506de-7eba-4197-bea4-2dcf7204a41e.jpg" alt="赵祥翔" src="https://wt-avatars.oss.aliyuncs.com/40/4f2506de-7eba-4197-bea4-2dcf7204a41e.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/tutorial/96f289f00c594f7e974fb3e63e0616e4"> 【常见问题】为什么我的图标显示不出来？ </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">180</span>--> 
                 <span class="thread-total-comment">3</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['84a28e71629b88'].display_name || 'UnmetUser'" class="ng-binding">赵祥翔</span> 发布于 
                 <span ng-bind="1409307193832|fromNow" class="ng-binding">08-29 18:13</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415067245498|fromNow" class="ng-binding">今天 10:14</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/a999a2cd-aad1-40a3-bc53-4f1b0e4c522a.png" alt="Terry" src="https://wt-avatars.oss.aliyuncs.com/40/a999a2cd-aad1-40a3-bc53-4f1b0e4c522a.png" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/teamwork/b6b17907daf1485b9f4255c45a03b666"> 【转】10条建议，轻松提高工作效率 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">247</span>--> 
                 <span class="thread-total-comment">3</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['a1fa3d02808ed0'].display_name || 'UnmetUser'" class="ng-binding">Terry</span> 发布于 
                 <span ng-bind="1406612996144|fromNow" class="ng-binding">07-29 13:49</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415067178451|fromNow" class="ng-binding">今天 10:12</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/36ccf3f7-ac14-4b04-807c-a029ede5a1ff.jpg" alt="JellyBool" src="https://wt-avatars.oss.aliyuncs.com/40/36ccf3f7-ac14-4b04-807c-a029ede5a1ff.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/skills/0db68404783e4b00bbdb09724bb668f2"> 【最佳实践】那些你必须知道的高效工作模板 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">423</span>--> 
                 <span class="thread-total-comment">11</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['13d6c8bf034541'].display_name || 'UnmetUser'" class="ng-binding">JellyBool</span> 发布于 
                 <span ng-bind="1411108768957|fromNow" class="ng-binding">09-19 14:39</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415066432201|fromNow" class="ng-binding">今天 10:00</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
           <div class="wt-row thread-item"> 
            <div class="thread-item-inner"> 
             <div class="row"> 
              <div class="col-sm-1 col-xs-2 avatar avatar-40"> 
               <span class="avatar-face"> <img ng-src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" alt="Samye" src="https://wt-avatars.oss.aliyuncs.com/40/556e94ed-cd5a-4160-bab3-284cd60a21d3.jpg" /> </span> 
              </div> 
              <div class="col-sm-11 col-xs-10 text"> 
               <div class="row primary"> 
                <div class="col-sm-9 col-xs-9 thread-title"> 
                 <h4> <a href="/club/skills/9d6094a0e5c1473c80198774abb0c0c4"> 【Worktile技巧帖】消灭重复性工作（一）：项目模板 </a> </h4> 
                </div> 
                <div class="col-sm-3 thread-counts"> 
                 <!--<span class="thread-total-view forum-badge icon-eye-open">384</span>--> 
                 <span class="thread-total-comment">7</span> 
                </div> 
               </div> 
               <div class="row secondary hidden-xs"> 
                <div class="col-sm-5 col-xs-5 thread-meta"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name || 'UnmetUser'" class="ng-binding">Samye</span> 发布于 
                 <span ng-bind="1409638493060|fromNow" class="ng-binding">09-02 14:14</span> 
                </div> 
                <div class="col-sm-3 col-xs-3"></div> 
                <!-- ngIf: '18606a15e54798' --> 
                <div class="col-sm-4 thread-comment-meta ng-scope" ng-if="'18606a15e54798'"> 
                 <span ng-bind="clubUsers['18606a15e54798'].display_name" class="ng-binding">Samye</span> 最后回复于 
                 <span ng-bind="1415066387850|fromNow" class="ng-binding">今天 09:59</span> 
                </div> 
                <!-- end ngIf: '18606a15e54798' --> 
               </div> 
              </div> 
             </div> 
            </div> 
           </div> 
          </div> 
          <div class="category-pager"> 
           <ul class="pagination"> 
            <li class="disabled"><a href="javascript:;" class="paginator-previous">上一页</a></li> 
            <li class="active"><a href="?page=1">1</a></li> 
            <li class="paginator-page"><a href="?page=2">2</a></li> 
            <li class="paginator-page"><a href="?page=3">3</a></li> 
            <li class="paginator-page"><a href="?page=4">4</a></li> 
            <li class="paginator-page"><a href="?page=5">5</a></li> 
            <li class="paginator-page"><a href="?page=6">6</a></li> 
            <li class="paginator-page"><a href="?page=7">7</a></li> 
            <li class="paginator-page"><a href="?page=8">8</a></li> 
            <li class="paginator-page"><a href="?page=9">9</a></li> 
            <li class="paginator-page"><a href="?page=10">10</a></li> 
            <li class=""><a href="?page=2" class="paginator-next">下一页</a></li> 
           </ul> 
          </div> 
         </div> 
        </div> 
       </div> 
       <div class="visible-xs">
        &nbsp;
       </div> 
       <div class="sidebar col-xs-12 col-sm-3"> 
        <div class="sidebar-inner"> 
         <div class="sidebar-widget" ng-init="message_count = 0"> 
          <h4> <a href="/club/mine">我的社区</a> </h4> 
          <ul> 
           <li><a ng-show="message_count &gt; 0" href="/club/mine" class="ng-hide">您有 <span class="thread-total-comment ng-binding" ng-bind="message_count">0</span> 条新回复 </a> <a ng-show="message_count &lt;= 0" href="/club/mine" class="">暂无新回复</a> </li> 
          </ul> 
         </div> 
         <div class="sidebar-widget"> 
          <h4>搜索</h4> 
          <form action="/help/search" method="GET" class="ng-pristine ng-valid"> 
           <div class="input-group"> 
            <input name="q" type="text" class="form-control" placeholder="搜索您的问题..." /> 
            <span class="input-group-btn"> <button class="btn btn-success plr_10" type="submit">搜 索</button> </span> 
           </div> 
          </form> 
         </div> 
         <div class="sidebar-widget"> 
          <h4>版块</h4> 
          <ul> 
           <li><a href="/club/all"> 所有帖子 </a></li> 
           <li><a href="/club/news"> 官方发布 </a></li> 
           <li><a href="/club/tutorial"> 新手上路 </a></li> 
           <li><a href="/club/feedback"> 用户反馈 </a></li> 
           <li><a href="/club/skills"> 使用技巧 </a></li> 
           <li><a href="/club/teamwork"> 协同之道 </a></li> 
           <li><a href="/club/activities"> 线下活动 </a></li> 
           <li><a href="/club/ycbar"> 易成酒吧 </a></li> 
          </ul> 
         </div> 
         <div class="sidebar-widget"> 
          <h4>关注微信</h4> 
          <div class="contact-code"> 
           <img src="https://dn-wtbox.qbox.me/img/index/contact-code.png?ver=3.0.14" /> 
          </div> 
         </div> 
         <div> 
          <a href="/blog/skills/get-started-on-worktile"> <img width="100%" src="https://dn-wtbox.qbox.me/img/index/get_started_on_worktile.png?ver=3.0.14" /> </a> 
         </div> 
        </div> 
       </div> 
      </div> 
      <footer id="footer-outer" class="hidden-xs"> 
       <div class="columns"> 
        <ul class="column mr_210"> 
         <li><h2>产品</h2></li> 
         <li><a target="_self" href="/tour">功能特性</a></li> 
         <li><a target="_self" href="/security">数据安全</a></li> 
         <li><a target="_self" href="/plan">付费方案</a></li> 
         <li><a target="_self" href="/mobile">移动版本</a></li> 
        </ul> 
        <ul class="column mr_210"> 
         <li><h2>媒体</h2></li> 
         <li><a target="_self" href="/uservoice">用户怎么说</a></li> 
         <li><a target="_self" href="/customers">他们也在用</a></li> 
         <li><a target="_self" href="/press">媒体报道</a></li> 
        </ul> 
        <ul class="column mr_210"> 
         <li><h2>支持</h2></li> 
         <li><a target="_self" href="/help">帮助中心</a></li> 
         <li><a target="_self" href="/guide">用户指南</a></li> 
         <li><a target="_self" href="/videos">帮助视频</a></li> 
         <li><a target="_self" href="/blog">官方博客</a></li> 
         <li><a target="_self" href="/club">用户社区</a></li> 
         <li><a target="_self" href="/feedback">在线反馈</a></li> 
        </ul> 
        <ul class="column"> 
         <li><h2>更多</h2></li> 
         <li><a target="_self" href="/about">关于我们</a></li> 
         <li><a target="_self" href="/contact">联系我们</a></li> 
         <!--<li><a href="javascript:;">工作机会</a></li>--> 
         <li><a target="_self" href="/privacy">隐私声明</a></li> 
         <li><a target="_self" href="/terms">服务条款</a></li> 
        </ul> 
       </div> 
       <div class="text-center">
        &copy; 2014 worktile.com &nbsp; 京ICP备13017353号-3 &nbsp; 京公网安备11010802012357号
       </div> 
      </footer> 
     </div> 
    </div> 
   </div> 
  </div> 
 </body>
</html>
</html>