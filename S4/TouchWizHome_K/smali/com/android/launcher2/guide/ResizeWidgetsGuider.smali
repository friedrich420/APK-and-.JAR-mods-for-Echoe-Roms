.class public Lcom/android/launcher2/guide/ResizeWidgetsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "ResizeWidgetsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field public static isResizeHelpDialogVisible:Z

.field public static isStep3Visible:Z

.field public static isWidgetToBeAdded:Z

.field static layout:Landroid/view/ViewGroup;

.field static mStep2Text:Landroid/widget/TextView;

.field static menuLayout:Landroid/view/View;

.field private static okButtonClicked:Z


# instance fields
.field public AddedWidget:Lcom/android/launcher2/HomeItem;

.field private TAG:Ljava/lang/String;

.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput-boolean v1, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->okButtonClicked:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    .line 51
    sput-boolean v1, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isStep3Visible:Z

    .line 52
    sput-boolean v1, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isResizeHelpDialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 48
    const-string v0, "ResizeWidgetGuider"

    iput-object v0, p0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->TAG:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->TAG:Ljava/lang/String;

    const-string v1, "Resize widgets guider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    sget-boolean v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isResizeHelpDialogVisible:Z

    if-nez v3, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 110
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 111
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->TAG:Ljava/lang/String;

    const-string v4, " frag!=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 114
    sget-object v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 115
    .local v1, "childcount":I
    sget-boolean v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->okButtonClicked:Z

    if-nez v3, :cond_2

    .line 116
    sget-object v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 117
    :cond_2
    sput-boolean v5, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isResizeHelpDialogVisible:Z

    .line 118
    sput-boolean v5, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->okButtonClicked:Z

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    .line 90
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->showHelpDialog()V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "x0"    # Landroid/widget/CompoundButton;
    .param p2, "x1"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 130
    sget-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isResizeHelpDialogVisible:Z

    if-eqz v6, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sput v9, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 138
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 139
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 141
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 144
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    if-nez v6, :cond_2

    .line 146
    iput-boolean v8, v2, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    .line 147
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    .line 148
    iput-boolean v8, v2, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    .line 150
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->HelpAppAddwidget()Lcom/android/launcher2/HomeWidgetItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->AddedWidget:Lcom/android/launcher2/HomeItem;

    .line 151
    iget-object v6, p0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->AddedWidget:Lcom/android/launcher2/HomeItem;

    if-nez v6, :cond_3

    .line 154
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Resize Widget Guide encountered a problem!"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_3
    sput-boolean v9, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isResizeHelpDialogVisible:Z

    .line 158
    const v6, 0x7f030016

    sget-object v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->menuLayout:Landroid/view/View;

    .line 159
    sget-object v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 160
    .local v5, "up_pointer":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->bringToFront()V

    .line 161
    sget-object v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 162
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 163
    .local v1, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 164
    .local v4, "textBox":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider$1;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/guide/ResizeWidgetsGuider$1;-><init>(Lcom/android/launcher2/guide/ResizeWidgetsGuider;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget-object v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 175
    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 176
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->helpHubSnapToLastPage()V

    goto/16 :goto_0
.end method

.method public showHelpDialog_step2()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x3f19999a    # 0.6f

    const v6, 0x3dcccccd    # 0.1f

    .line 181
    sget-boolean v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isResizeHelpDialogVisible:Z

    if-eqz v4, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v4, 0x2

    sput v4, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 187
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 188
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 189
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 190
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 191
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030017

    sget-object v5, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->menuLayout:Landroid/view/View;

    .line 192
    sget-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->menuLayout:Landroid/view/View;

    const v5, 0x7f0f001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->mStep2Text:Landroid/widget/TextView;

    .line 193
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    sget-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->mStep2Text:Landroid/widget/TextView;

    invoke-direct {v1, v0, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 194
    .local v1, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->mStep2Text:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 195
    sput-boolean v8, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isResizeHelpDialogVisible:Z

    .line 196
    sget-boolean v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isStep3Visible:Z

    if-eqz v4, :cond_0

    .line 198
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isStep3Visible:Z

    .line 199
    sget-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->mStep2Text:Landroid/widget/TextView;

    const v5, 0x7f1000a1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 200
    sget-object v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->mStep2Text:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
