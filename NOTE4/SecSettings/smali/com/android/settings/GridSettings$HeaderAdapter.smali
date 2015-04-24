.class public Lcom/android/settings/GridSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3616
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3617
    # setter for: Lcom/android/settings/GridSettings;->mHeaderContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/settings/GridSettings;->access$2502(Landroid/content/Context;)Landroid/content/Context;

    .line 3619
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3620
    iput-object p3, p0, Lcom/android/settings/GridSettings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 3621
    return-void
.end method

.method public static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 6
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v0, 0x1

    .line 3570
    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 3584
    :cond_0
    :goto_0
    return v0

    .line 3572
    :cond_1
    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 3578
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 3784
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3786
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006a9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3790
    :cond_0
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3792
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100691

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3793
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0a1e34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3795
    :cond_1
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3797
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 3596
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3590
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 3591
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3625
    if-nez p2, :cond_4

    const/4 v15, 0x1

    .line 3626
    .local v15, "isNull":Z
    :goto_0
    const-string v19, "GridSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "position list: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / isNull: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceActivity$Header;

    .line 3629
    .local v9, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v9}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v10

    .line 3630
    .local v10, "headerType":I
    const/16 v18, 0x0

    .line 3632
    .local v18, "view":Landroid/view/View;
    if-nez p2, :cond_5

    .line 3633
    new-instance v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/GridSettings$1;)V

    .line 3634
    .local v11, "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v10, :pswitch_data_0

    .line 3689
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3696
    :goto_2
    packed-switch v10, :pswitch_data_1

    .line 3753
    :cond_0
    :goto_3
    :pswitch_0
    # getter for: Lcom/android/settings/GridSettings;->mHeaderContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$2500()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v7

    .line 3754
    .local v7, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 3755
    iget-wide v0, v9, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100741

    cmp-long v19, v20, v22

    if-nez v19, :cond_3

    .line 3756
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    .line 3757
    .local v17, "telephonyManager":Landroid/telephony/TelephonyManager;
    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_c

    const/4 v12, 0x1

    .line 3759
    .local v12, "isAirplaneMode":Z
    :goto_4
    const/4 v14, 0x0

    .line 3760
    .local v14, "isNoSim":Z
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v16

    .line 3761
    .local v16, "simState":I
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 3762
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->isNoSIM()Z

    move-result v14

    .line 3769
    :cond_1
    :goto_5
    if-nez v12, :cond_2

    if-eqz v14, :cond_f

    .line 3770
    :cond_2
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setClickable(Z)V

    .line 3771
    const v19, 0x3ee66666    # 0.45f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 3779
    .end local v12    # "isAirplaneMode":Z
    .end local v14    # "isNoSim":Z
    .end local v16    # "simState":I
    .end local v17    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_6
    return-object v18

    .line 3625
    .end local v7    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v9    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v10    # "headerType":I
    .end local v11    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    .end local v15    # "isNull":Z
    .end local v18    # "view":Landroid/view/View;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3638
    .restart local v9    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v10    # "headerType":I
    .restart local v11    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    .restart local v15    # "isNull":Z
    .restart local v18    # "view":Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040110

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 3640
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_1

    .line 3644
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0401a7

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 3646
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3647
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3649
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3651
    const v19, 0x7f100065

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Switch;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_1

    .line 3655
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0401a3

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 3657
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3658
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3660
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3662
    const v19, 0x7f1003f1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 3663
    const v19, 0x7f10019b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_1

    .line 3667
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0401a5

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 3670
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3671
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3673
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 3678
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0401a6

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 3681
    const v19, 0x7f1003f2

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    .line 3682
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3683
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3685
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 3691
    .end local v11    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    :cond_5
    move-object/from16 v18, p2

    .line 3692
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    .restart local v11    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_2

    .line 3698
    :pswitch_6
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    iget v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3699
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    iget v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0024

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3700
    .local v4, "contentDescription":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3701
    const v19, 0x7f10019d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3702
    .local v5, "divider":Landroid/view/View;
    const v19, 0x7f10019e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3703
    .local v6, "divider_first":Landroid/view/View;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 3704
    if-nez p1, :cond_6

    .line 3705
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3706
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 3708
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3709
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 3715
    .end local v4    # "contentDescription":Ljava/lang/String;
    .end local v5    # "divider":Landroid/view/View;
    .end local v6    # "divider_first":Landroid/view/View;
    :pswitch_7
    iget-wide v0, v9, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006cc

    cmp-long v19, v20, v22

    if-nez v19, :cond_8

    .line 3717
    const/4 v8, 0x0

    .line 3718
    .local v8, "hasCert":Z
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 3719
    const/4 v8, 0x0

    .line 3721
    :cond_7
    if-eqz v8, :cond_b

    .line 3722
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3723
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 3724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    const/4 v13, 0x1

    .line 3725
    .local v13, "isManaged":Z
    :goto_7
    if-eqz v13, :cond_a

    .line 3726
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const v20, 0x7f0202c1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3731
    :goto_8
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/GridSettings$HeaderAdapter$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/GridSettings$HeaderAdapter$1;-><init>(Lcom/android/settings/GridSettings$HeaderAdapter;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3744
    .end local v8    # "hasCert":Z
    .end local v13    # "isManaged":Z
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/android/settings/GridSettings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_3

    .line 3724
    .restart local v8    # "hasCert":Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_7

    .line 3728
    .restart local v13    # "isManaged":Z
    :cond_a
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const v20, 0x1080078

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_8

    .line 3740
    .end local v13    # "isManaged":Z
    :cond_b
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3741
    iget-object v0, v11, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 3748
    .end local v8    # "hasCert":Z
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/android/settings/GridSettings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_3

    .line 3757
    .restart local v7    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v17    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 3764
    .restart local v12    # "isAirplaneMode":Z
    .restart local v14    # "isNoSim":Z
    .restart local v16    # "simState":I
    :cond_d
    if-eqz v16, :cond_e

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 3766
    :cond_e
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 3773
    :cond_f
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setClickable(Z)V

    .line 3774
    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    .line 3634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 3696
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 3606
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 3611
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3601
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 3806
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 3802
    return-void
.end method
