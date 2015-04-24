.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;
    }
.end annotation


# static fields
.field private static mDeleteClicked:Z

.field private static mIsAlreadyRemoved:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isKmodelUI:Z

.field private mActionBack:Landroid/widget/LinearLayout;

.field private mActionBarView:Landroid/view/View;

.field private mActionMode:Landroid/view/ActionMode;

.field mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddButton:Landroid/view/View;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mCurrentSelected:Landroid/preference/Preference;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mDialogType:I

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mIsDeviceDeleted:Z

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectionMenuCheckbox:Landroid/widget/CheckBox;

.field private mView:Landroid/widget/LinearLayout;

.field private mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    const-string v0, "WifiApAllowedList"

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->TAG:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsDeviceDeleted:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    .line 909
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setChecked(Z)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v1, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->checkDeleteButtonstate()V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    .line 428
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeSelectedList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 83
    sput-boolean p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private changeActionBar()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 833
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v4, :cond_0

    .line 857
    :goto_0
    return-void

    .line 837
    :cond_0
    sget-boolean v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-nez v4, :cond_3

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->stopActionMode()V

    .line 839
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 843
    .local v1, "isLand":Z
    :goto_1
    const/16 v4, 0x1c

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 844
    if-eqz v1, :cond_2

    .line 845
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 846
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0

    .end local v1    # "isLand":Z
    :cond_1
    move v1, v3

    .line 841
    goto :goto_1

    .line 848
    .restart local v1    # "isLand":Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 852
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 855
    .end local v1    # "isLand":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startActionMode()V

    goto :goto_0
.end method

.method private checkDeleteButtonstate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSelectedItemCount()I

    move-result v0

    .line 432
    .local v0, "selectedCount":I
    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 437
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getSelectedItemCount()I
    .locals 4

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 862
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 863
    .local v2, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 864
    add-int/lit8 v0, v0, 0x1

    .line 861
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    .end local v2    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    return v0
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    const/4 v1, 0x0

    .line 518
    :goto_1
    return v1

    .line 513
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isAnyDeviceChecked()Z
    .locals 2

    .prologue
    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const/4 v1, 0x1

    .line 526
    :goto_1
    return v1

    .line 521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeEmptyView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 588
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    return-void
.end method

.method private removeSelectedList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 871
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 872
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 875
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 876
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 877
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 878
    .local v4, "wl":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 879
    sput-boolean v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsAlreadyRemoved:Z

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 881
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_0

    .line 882
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 883
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v6, v8, :cond_0

    .line 884
    const/4 v6, 0x4

    iput v6, v2, Landroid/os/Message;->what:I

    .line 885
    const-string v6, "mac"

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 887
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 874
    .end local v4    # "wl":Landroid/net/wifi/WifiApWhiteList;
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 893
    return-void
.end method

.method private startDeletePreference()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 442
    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-nez v7, :cond_2

    .line 443
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 444
    .local v4, "preference":Landroid/preference/Preference;
    const-class v7, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 445
    const v7, 0x7f0a0508

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 446
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v7, v9, v4}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 492
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 449
    .restart local v4    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity;

    invoke-virtual {v7, v9, v4}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0

    .line 452
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 454
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 455
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startActionMode()V

    .line 458
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 459
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040204

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "currentView":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "currentView":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 462
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    const v8, 0x7f1004bd

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAll:Landroid/widget/LinearLayout;

    .line 464
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    const v8, 0x7f1004be

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;

    .line 465
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 479
    .local v5, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v5}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 481
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v3, :cond_0

    .line 482
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 483
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 484
    .local v6, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v7}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 485
    .local v1, "device":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual {v6}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 488
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateEmptyView(Z)V
    .locals 3
    .param p1, "isLand"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 579
    :cond_0
    if-eqz p1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .param p1, "showIcon"    # Z

    .prologue
    const/4 v4, -0x2

    .line 593
    if-eqz p1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 595
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 603
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method private updateSelectionMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 406
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSelectedItemCount()I

    move-result v2

    .line 407
    .local v2, "selectedCount":I
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 409
    .local v0, "allCount":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002b

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "format":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 412
    if-lez v2, :cond_0

    if-ne v2, v0, :cond_0

    .line 413
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 417
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 418
    return-void

    .line 415
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x4

    const/4 v4, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    .line 158
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const v10, 0x7f0a04f6

    invoke-virtual {v8, v10}, Landroid/app/ActionBar;->setTitle(I)V

    .line 159
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 160
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    .line 161
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    .line 162
    sput-boolean v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 164
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v8, :cond_1

    const-string v8, "TMO"

    const-string v10, "ALL"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "NEWCO"

    const-string v10, "ALL"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    :cond_0
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const v10, 0x7f0205ce

    invoke-virtual {v8, v10}, Landroid/app/ActionBar;->setIcon(I)V

    .line 168
    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v10, "layout_inflater"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 169
    .local v2, "inflate":Landroid/view/LayoutInflater;
    const v8, 0x7f040266

    invoke-virtual {v2, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 170
    .local v7, "view":Landroid/widget/LinearLayout;
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-nez v8, :cond_2

    .line 171
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    :cond_2
    const v8, 0x7f1005a5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    .line 174
    const v8, 0x7f1005a7

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    .line 176
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_4

    .line 177
    const v8, 0x7f1005a6

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 178
    const v8, 0x7f1005a6

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_3
    const v8, 0x7f1005a8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 181
    const v8, 0x7f1005a8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_4
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-nez v8, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 187
    .local v5, "listAdapter":Landroid/widget/ListAdapter;
    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 188
    .local v1, "emptyView":Landroid/widget/FrameLayout;
    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 189
    .local v6, "lv":Landroid/widget/ListView;
    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 193
    .end local v1    # "emptyView":Landroid/widget/FrameLayout;
    .end local v5    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v6    # "lv":Landroid/widget/ListView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "currentView":Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-nez v8, :cond_6

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 195
    :cond_6
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-nez v8, :cond_b

    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    :goto_0
    const-string v8, "device_list_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 200
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v8, :cond_c

    .line 201
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 293
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v8

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 310
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v10, "layout_inflater"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 311
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040269

    invoke-virtual {v3, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    .line 312
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v10, 0x7f1005af

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    .line 313
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v10, 0x7f1005ad

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItem:Landroid/view/View;

    .line 314
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItem:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v10, 0x7f1005b0

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItemText:Landroid/view/View;

    .line 316
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v10, 0x7f1005ae

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItemText:Landroid/view/View;

    .line 317
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v10, 0x7f1000c4

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    .line 318
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    new-instance v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 331
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v10, 0x7f1000c3

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBack:Landroid/widget/LinearLayout;

    .line 332
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBack:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v8, :cond_7

    .line 334
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->checkDeleteButtonstate()V

    .line 338
    :cond_7
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$10;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 370
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 384
    :cond_8
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItem:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_f

    .line 396
    .local v4, "isLand":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v8, :cond_9

    .line 397
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 398
    :cond_9
    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-nez v8, :cond_a

    .line 399
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 401
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 402
    return-void

    .line 196
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "isLand":Z
    .restart local v0    # "currentView":Landroid/view/View;
    :cond_b
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 203
    :cond_c
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v10, "layout_inflater"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 204
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040267

    invoke-virtual {v3, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    .line 205
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v10, 0x7f1005ab

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    .line 206
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 236
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 250
    :cond_d
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v10, 0x7f1005a9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    .line 251
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v10, 0x7f1005aa

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    .line 252
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 277
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 291
    :cond_e
    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v8, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_1

    :cond_f
    move v4, v9

    .line 394
    goto/16 :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 799
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 800
    packed-switch p2, :pswitch_data_0

    .line 829
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_0
    move-object v4, p1

    .line 802
    check-cast v4, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "mac":Ljava/lang/String;
    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    .line 805
    .local v3, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    sget-boolean v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-eqz v4, :cond_1

    .line 806
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 807
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 809
    :cond_1
    invoke-virtual {v3, v1, v2}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 811
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 812
    .local v0, "device":Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_0

    .line 817
    .end local v0    # "device":Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    :pswitch_3
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 820
    :pswitch_4
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 809
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 564
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 565
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 566
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 569
    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v0, :cond_3

    .line 570
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 572
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 573
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 149
    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    .line 150
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 627
    if-ne p1, v0, :cond_1

    .line 628
    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 629
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 630
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 669
    :cond_0
    :goto_0
    return-object v3

    .line 631
    :cond_1
    if-ne p1, v1, :cond_2

    .line 632
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 633
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v6, "deleteDeviceDialog":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04e9

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00bb

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$15;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01ce

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 653
    .end local v6    # "deleteDeviceDialog":Landroid/app/AlertDialog$Builder;
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 654
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 655
    .local v7, "macWarnDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x1040014

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0515

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0514

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$17;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$16;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v6, 0x7f020129

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 530
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 531
    const v0, 0x7f0a04e2

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 535
    :cond_0
    const v0, 0x7f0a0508

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020143

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 537
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020142

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 550
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_2

    .line 551
    const v0, 0x7f0a04e2

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 553
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 559
    :cond_2
    :goto_1
    return-void

    .line 540
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 543
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 556
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x1

    .line 607
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 622
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 609
    :pswitch_0
    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 610
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    goto :goto_0

    .line 613
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v3, v7, :cond_0

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 616
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a052b

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 618
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 720
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 726
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "checked"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 496
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    if-eqz v1, :cond_1

    .line 510
    .end local p1    # "preference":Landroid/preference/Preference;
    .end local p2    # "checked":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 500
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "checked":Ljava/lang/Object;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    .line 501
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "checked":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 502
    .local v0, "isChecked":Z
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 503
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 505
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAllDeviceChecked()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 508
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    .line 509
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    goto :goto_0

    .line 505
    :cond_5
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 794
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 708
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 709
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 712
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v0, :cond_1

    .line 713
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_0
.end method

.method public reloadWhiteList()V
    .locals 3

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 674
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 675
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 677
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 679
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 682
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 684
    .local v1, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 685
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 686
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 687
    .local v0, "b":Landroid/os/Bundle;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 688
    const-string v3, "mac"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 690
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 693
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 696
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    .line 698
    .local v3, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#ff"

    const-string v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "color":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04f2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<font color="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object p2, v6, v10

    const/4 v7, 0x2

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "msgAdd":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 703
    .local v2, "toastAdd":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 704
    return-void
.end method

.method public startActionMode()V
    .locals 2

    .prologue
    .line 896
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 897
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;)V

    .line 898
    .local v0, "cb":Landroid/view/ActionMode$Callback;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    .line 900
    .end local v0    # "cb":Landroid/view/ActionMode$Callback;
    :cond_0
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    .line 907
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 729
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 730
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 732
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 733
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 734
    .local v2, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 735
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v1, :cond_1

    .line 736
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 737
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 739
    .local v3, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 742
    .end local v3    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 743
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v5, :cond_2

    .line 744
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeEmptyView()V

    .line 746
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_3

    .line 747
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f020143

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 748
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 749
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v5, :cond_3

    .line 750
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 753
    :cond_3
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_5

    .line 754
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v5, :cond_4

    .line 755
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 759
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 785
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 786
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 788
    :cond_6
    return-void

    .line 762
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 764
    .local v0, "isLand":Z
    :goto_2
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v5, :cond_8

    .line 765
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 767
    :cond_8
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_9

    .line 768
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f020142

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 769
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 770
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v5, :cond_9

    .line 771
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 774
    :cond_9
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_5

    .line 775
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z

    if-eqz v5, :cond_a

    .line 776
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    :cond_a
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 780
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 781
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    goto :goto_1

    .end local v0    # "isLand":Z
    :cond_b
    move v0, v4

    .line 762
    goto :goto_2
.end method
