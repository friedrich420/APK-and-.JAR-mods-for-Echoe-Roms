.class public Lcom/android/settings/myplace/MyPlaceProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    }
.end annotation


# static fields
.field private static OPTION_SELECTED:Z


# instance fields
.field alert:Landroid/app/AlertDialog;

.field private carmode:Z

.field private categoriesSelectMethod:Landroid/preference/PreferenceCategory;

.field private fixedMenuNum:I

.field private helpRequest:I

.field private isKnoxUser:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAddMode:Z

.field private mAlert:Landroid/app/AlertDialog;

.field private mAutoConnect:Landroid/preference/CheckBoxPreference;

.field private mDefaultName:Ljava/lang/String;

.field private mEditMode:Z

.field private mEditName:Landroid/widget/EditText;

.field private mFlag:Z

.field private mGuideText:Landroid/widget/TextView;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mId:I

.field private mIsFromHelp:Z

.field mIsMobileConnected:Z

.field private mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

.field private mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

.field private mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

.field private mLbsMode:Z

.field mLocationBitmap:Landroid/graphics/Bitmap;

.field private mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

.field private mMethodPreference:Landroid/preference/PreferenceScreen;

.field private mMobileDataChargeDialog:Landroid/app/AlertDialog;

.field private mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectMethod:Landroid/preference/PreferenceScreen;

.field private mTextName:Landroid/widget/TextView;

.field private mcancelButton:Landroid/widget/Button;

.field private setFlag1:Z

.field private setFlag2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 121
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    .line 137
    new-instance v0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-direct {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .line 140
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 141
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    .line 142
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    .line 170
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 171
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 172
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 173
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 174
    iput v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 87
    sput-boolean p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 540
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 544
    :cond_0
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 546
    const-string v1, "key_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    .line 547
    const-string v1, "key_map"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    .line 548
    const-string v1, "key_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    .line 549
    const-string v1, "key_auto_connect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    .line 550
    const-string v1, "categories_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->categoriesSelectMethod:Landroid/preference/PreferenceCategory;

    .line 551
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->categoriesSelectMethod:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    if-nez v1, :cond_5

    .line 553
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 554
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 555
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 569
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 571
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 572
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 574
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 576
    new-instance v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3f3

    invoke-direct {v1, v2, v4, p0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    .line 577
    new-instance v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3f4

    invoke-direct {v1, v2, v4, p0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    .line 578
    new-instance v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-direct {v1, v2, v4, p0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    .line 580
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 581
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const-string v2, "key_pref_wifi"

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setKey(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 584
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const-string v2, "key_pref_bt"

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setKey(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 587
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const-string v2, "key_pref_gps"

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setKey(Ljava/lang/String;)V

    .line 589
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v5, :cond_3

    .line 590
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    :cond_3
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 593
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 595
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    if-eqz v1, :cond_4

    .line 596
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setEnabled(Z)V

    .line 600
    :cond_4
    return-object v0

    .line 556
    :cond_5
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 557
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 559
    :cond_6
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 560
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 562
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 563
    :cond_7
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 565
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 566
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private initPlaceInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 605
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 609
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 610
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v0, :cond_3

    .line 613
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 614
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mDefaultName:Ljava/lang/String;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v8

    .line 655
    .local v8, "tmpProfileName":Ljava/lang/String;
    const-string v0, "Home"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 656
    const v0, 0x7f0a1977

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 666
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 669
    return-void

    .line 616
    .end local v8    # "tmpProfileName":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v0, :cond_4

    .line 617
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 618
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a1973

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 649
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 650
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    const-string v0, "MyPlaceSettings"

    const-string v1, "CursorWindowAllocationException"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 621
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    :cond_5
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 624
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location_type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "location_type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp_utc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp_utc"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "address"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluetooth_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "location_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 633
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "timestamp_utc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mTimestamp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 637
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 638
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "extra_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 639
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bluetooth_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bluetooth_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 657
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "tmpProfileName":Ljava/lang/String;
    :cond_7
    const-string v0, "Car"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 658
    const v0, 0x7f0a1979

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 659
    :cond_8
    const-string v0, "Work"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 660
    const v0, 0x7f0a1978

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 661
    :cond_9
    const-string v0, "Gym"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 662
    const v0, 0x7f0a197a

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 663
    :cond_a
    const-string v0, "School"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    const v0, 0x7f0a197b

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2
.end method

.method private isPlaceInfoChanged()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.android.internal.intelligence.useranalysis/place/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 728
    .local v6, "c":Landroid/database/Cursor;
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v7, 0x0

    .line 731
    .local v7, "isChanged":Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 732
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 733
    const-string v0, "MyPlaceSettings"

    const-string v1, "_id is not match"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v7, 0x0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "location_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 737
    const-string v0, "MyPlaceSettings"

    const-string v1, "location_type is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v7, 0x1

    .line 784
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 785
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaceInfoChanged() returns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return v7

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 742
    const-string v0, "MyPlaceSettings"

    const-string v1, "mProfileName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v7, 0x1

    goto :goto_0

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 747
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLocation is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v7, 0x1

    goto :goto_0

    .line 749
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string v2, "latitude"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    .line 751
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLatitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 753
    :cond_5
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string v2, "longitude"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_6

    .line 755
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLongitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 757
    :cond_6
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v0

    const-string v1, "extra_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->compareByteArray([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 758
    const-string v0, "MyPlaceSettings"

    const-string v1, "mByteMap is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 760
    :cond_7
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 763
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 765
    :cond_8
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 768
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApBSSID is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 770
    :cond_9
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 773
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtDeviceName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 775
    :cond_a
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtMacAddress is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 782
    :cond_b
    const-string v0, "MyPlaceSettings"

    const-string v1, "moveToFirst() is failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private requestGPSLocation()V
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 1147
    const-string v1, "MyPlaceSettings"

    const-string v2, "map is clicked. start mapview"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1150
    :cond_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1152
    const-string v1, "map_latitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1153
    const-string v1, "map_longtitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1156
    return-void
.end method

.method private showHelpStep1Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1476
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1478
    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1480
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1482
    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1484
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_2

    .line 1485
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1486
    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1489
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_3

    .line 1490
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400de

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1492
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1493
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1494
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1496
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1497
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1498
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 1500
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1503
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v5, :cond_0

    .line 1504
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1505
    iput-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1507
    :cond_0
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v5, :cond_1

    .line 1508
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1509
    iput-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1512
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400df

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1514
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v5, :cond_3

    .line 1515
    const v5, 0x7f100004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1517
    .local v0, "bt":Landroid/widget/ImageView;
    const v5, 0x7f100215

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1519
    .local v3, "text":Landroid/widget/TextView;
    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1524
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 1525
    new-instance v5, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1543
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1544
    .local v2, "mcontext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1546
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v5, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v5, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1547
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 1548
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v6, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v5, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1550
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v8}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 1551
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1553
    .end local v0    # "bt":Landroid/widget/ImageView;
    .end local v1    # "mActivity":Landroid/app/Activity;
    .end local v2    # "mcontext":Landroid/content/Context;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_3
    sget-boolean v5, Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z

    if-eq v5, v8, :cond_4

    .line 1554
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->resetAnimation()V

    .line 1555
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 1557
    :cond_4
    return-void
.end method

.method private showHelpStep3Dialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1560
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v4, :cond_0

    .line 1561
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1562
    iput-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1564
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v4, :cond_2

    .line 1565
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400e0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1567
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1573
    .local v0, "bt":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 1574
    new-instance v4, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1585
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1586
    .local v2, "mcontext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1588
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v4, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v4, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1589
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 1590
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v5, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1592
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 1593
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1594
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 1596
    .end local v0    # "bt":Landroid/widget/ImageView;
    .end local v1    # "mActivity":Landroid/app/Activity;
    .end local v2    # "mcontext":Landroid/content/Context;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private showHelpStep4Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1633
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 1634
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1635
    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1637
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 1638
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400e1

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1640
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1642
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$16;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1651
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1652
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1653
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1655
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1656
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1657
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 1659
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showMobileDateChargeEnableDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    .line 1161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 1163
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1164
    iput-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 1167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1168
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04008b

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1169
    .local v2, "layout":Landroid/view/View;
    const v5, 0x7f100075

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1171
    .local v4, "message":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    if-eqz v5, :cond_1

    .line 1172
    const v5, 0x7f0a1674

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1173
    const v5, 0x7f0a1679

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1179
    :goto_0
    const v5, 0x7f100167

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1180
    .local v3, "mCheckBox":Landroid/widget/CheckBox;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1181
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1182
    const v5, 0x7f0a08f4

    new-instance v6, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;Landroid/view/View;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1201
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 1207
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1209
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/myplace/MyPlaceProfileSettings$12;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$12;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1213
    return-void

    .line 1176
    .end local v3    # "mCheckBox":Landroid/widget/CheckBox;
    :cond_1
    const v5, 0x7f0a1675

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1177
    const v5, 0x7f0a1678

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateProfile()V
    .locals 9

    .prologue
    const v8, 0x7f0a1827

    const v7, 0x7f0a1823

    const/4 v6, 0x1

    const v5, 0x7f04013c

    const v4, 0x7f04013b

    .line 673
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const v3, 0x7f0a1985

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setTitle(I)V

    .line 675
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_3

    .line 677
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    .line 681
    :goto_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v7}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setTitle(I)V

    .line 682
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_4

    .line 684
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    .line 688
    :goto_1
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v8}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setTitle(I)V

    .line 689
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_5

    .line 691
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    .line 698
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 699
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0a1985

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 700
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 712
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 713
    const-string v2, "MyPlaceSettings"

    const-string v3, "mPlaceInfo.mByteMap is not null, mPlaceInfo.mByteMap : "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 715
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 717
    .local v0, "LocationBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 718
    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 719
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceGpsPreference;->setGpsImage(Landroid/graphics/Bitmap;)V

    .line 722
    .end local v0    # "LocationBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    :cond_2
    return-void

    .line 679
    :cond_3
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    goto/16 :goto_0

    .line 686
    :cond_4
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .line 693
    :cond_5
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    goto :goto_2

    .line 701
    :cond_6
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 702
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 703
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 704
    :cond_7
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 705
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 706
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1416
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1417
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1419
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 1420
    const-string v5, "MyPlaceSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_0
    :goto_0
    return v4

    .line 1424
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1425
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1427
    if-nez v3, :cond_2

    .line 1428
    const-string v4, "MyPlaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 1431
    goto :goto_0

    .line 1434
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1435
    .local v1, "isMobileAvail":Z
    const-string v6, "MyPlaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public compareByteArray([B[B)Z
    .locals 4
    .param p1, "_data1"    # [B
    .param p2, "_data2"    # [B

    .prologue
    .line 794
    const/4 v0, 0x0

    .line 796
    .local v0, "isCompareResult":Z
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 797
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareByteArray return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return v0
.end method

.method public configureActionBar()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    .line 231
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 233
    return-void
.end method

.method getSelectedTypeIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1319
    const/4 v0, -0x1

    .line 1320
    .local v0, "focus":I
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1344
    :goto_0
    :pswitch_0
    return v0

    .line 1322
    :pswitch_1
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_0

    .line 1323
    const/4 v0, 0x3

    goto :goto_0

    .line 1325
    :cond_0
    const/4 v0, 0x2

    .line 1326
    goto :goto_0

    .line 1328
    :pswitch_2
    const/4 v0, 0x0

    .line 1329
    goto :goto_0

    .line 1331
    :pswitch_3
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_1

    .line 1332
    const/4 v0, 0x1

    goto :goto_0

    .line 1334
    :cond_1
    const/4 v0, 0x0

    .line 1335
    goto :goto_0

    .line 1337
    :pswitch_4
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_2

    .line 1338
    const/4 v0, 0x2

    goto :goto_0

    .line 1340
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getSelectedTypeIndexMAP()I
    .locals 2

    .prologue
    .line 1349
    const/4 v0, -0x1

    .line 1350
    .local v0, "focus":I
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1359
    :goto_0
    return v0

    .line 1352
    :pswitch_0
    const/4 v0, 0x1

    .line 1353
    goto :goto_0

    .line 1355
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDuplicatePlaceName()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1296
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1297
    .local v7, "profileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1302
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1304
    :cond_0
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1308
    const/4 v0, 0x1

    .line 1315
    :goto_0
    return v0

    .line 1310
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1312
    :cond_2
    if-eqz v6, :cond_3

    .line 1313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1315
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLBHsuport()Z
    .locals 2

    .prologue
    .line 1662
    const/4 v0, 0x0

    .line 1666
    .local v0, "checkLBH":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1667
    const/4 v0, 0x0

    .line 1670
    .end local v0    # "checkLBH":Z
    :cond_0
    return v0
.end method

.method public isMobileDataConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1448
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1449
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1451
    .local v1, "mobileNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1452
    const/4 v2, 0x1

    .line 1455
    .end local v1    # "mobileNetwork":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 237
    const-string v3, "MyPlaceSettings"

    const-string v4, "onActivityCreated"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 239
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04013e

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1002c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1002c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1002c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mGuideText:Landroid/widget/TextView;

    .line 261
    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 262
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mGuideText:Landroid/widget/TextView;

    const v4, 0x7f0a1988

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 297
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    .line 298
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    .line 301
    :cond_1
    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    iget v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    if-ge v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-nez v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 303
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setClickable(Z)V

    .line 304
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 305
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 306
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 315
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 317
    new-instance v0, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    .line 324
    .local v0, "handler":Landroid/os/Handler;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->initPlaceInfo()V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 333
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 334
    return-void

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_3
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 327
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setClickable(Z)V

    .line 328
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 1216
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(), requestCode :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    if-ne p2, v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1219
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is resetPlaceInfo"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 1223
    :cond_0
    if-ne p1, v6, :cond_4

    .line 1224
    if-ne p2, v4, :cond_3

    .line 1225
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "ssid"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "bssid"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1227
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1234
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_2

    .line 1235
    iput v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    .line 1292
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1293
    return-void

    .line 1231
    :cond_3
    if-nez p2, :cond_1

    .line 1232
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1237
    :cond_4
    if-ne p1, v5, :cond_7

    .line 1238
    if-ne p2, v4, :cond_6

    .line 1239
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "DeviceName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1240
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "MacAddress"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1241
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    .line 1242
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1244
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_2

    .line 1245
    iput v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 1247
    :cond_6
    if-nez p2, :cond_2

    .line 1248
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_2

    .line 1250
    iput v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 1253
    :cond_7
    if-ne p1, v7, :cond_a

    .line 1254
    if-ne p2, v4, :cond_9

    .line 1255
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "DeviceName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "MacAddress"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1257
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_8

    .line 1258
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1260
    :cond_8
    iput v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 1261
    :cond_9
    if-nez p2, :cond_2

    .line 1262
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iput v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto/16 :goto_1

    .line 1265
    :cond_a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1266
    if-ne p2, v4, :cond_d

    .line 1267
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "location"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1268
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "latitude"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1269
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "longitude"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1270
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v1, v2, v8

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v1, v2, v8

    if-eqz v1, :cond_c

    .line 1271
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_b

    .line 1272
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1275
    :cond_b
    const-string v1, "map"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1276
    .local v0, "btMap":[B
    if-eqz v0, :cond_2

    .line 1277
    const-string v1, "MyPlaceSettings"

    const-string v2, "ADD_GPS_LOCATION_REQUEST, btMap : "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v1, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    goto/16 :goto_1

    .line 1282
    .end local v0    # "btMap":[B
    :cond_c
    const-string v1, "MyPlaceSettings"

    const-string v2, "Location information is empty / SKIP"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1284
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1285
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_1

    .line 1287
    :cond_d
    if-nez p2, :cond_2

    .line 1288
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->getPrefID()I

    move-result v0

    .line 340
    .local v0, "prefId":I
    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlacePartialInfo(I)V

    .line 342
    .end local v0    # "prefId":I
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "HelpStep":I
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 807
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 808
    const/4 v0, 0x1

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 812
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 813
    const/4 v0, 0x2

    .line 815
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_2

    .line 816
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 817
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 818
    const/4 v0, 0x3

    .line 820
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_3

    .line 821
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 822
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 823
    const/4 v0, 0x4

    .line 825
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 826
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    .line 834
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 836
    return-void

    .line 827
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 828
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 829
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 830
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    .line 831
    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 832
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    .line 181
    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setHasOptionsMenu(Z)V

    .line 182
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v6, 0x64

    if-lt v3, v6, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 187
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 188
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    .line 189
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "my place id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v3, "fromHelp"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    .line 191
    const-string v3, "car_mode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    .line 192
    const-string v3, "edit_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    .line 193
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "edit mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v3, "add_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    .line 195
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v3, "lbs_mode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    .line 199
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbl mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 202
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "location"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "latitude"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 204
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "longitude"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 205
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v3, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 206
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbl mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v3, "default_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mDefaultName:Ljava/lang/String;

    .line 214
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "myplacehelp"

    invoke-virtual {v3, v6, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 215
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 216
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "value"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    move v3, v5

    .line 185
    goto/16 :goto_0

    .line 211
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_3
    const-string v3, "MyPlaceSettings"

    const-string v6, "Bundle is null"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 437
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 438
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v1, :cond_0

    .line 439
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    const v1, 0x7f120008

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 447
    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mcancelButton:Landroid/widget/Button;

    .line 448
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    .line 456
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0a0df1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 523
    .end local v0    # "customView":Landroid/view/View;
    :cond_2
    const/4 v1, 0x2

    const v2, 0x7f0a01ce

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 529
    const/4 v1, 0x1

    const v2, 0x7f0a07d1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->configureActionBar()V

    .line 226
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 346
    const-string v1, "MyPlaceSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 349
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 351
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 352
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 840
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 902
    :goto_0
    return v4

    .line 843
    :sswitch_0
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a07d6

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isDuplicatePlaceName()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a1981

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 852
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "timeStamp":Ljava/lang/String;
    const-string v4, "location_type"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v4, "name"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v4, "address"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v4, "latitude"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 859
    const-string v4, "longitude"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 860
    const-string v4, "extra_data"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 861
    const-string v4, "wifi_name"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v4, "wifi_bssid"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v4, "bluetooth_name"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v4, "bluetooth_mac_address"

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v4, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    const-string v4, "monitoring_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    iget-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v4, :cond_4

    .line 869
    const-string v4, "category"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 870
    const-string v4, "timestamp_utc"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_ADDED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 877
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "uri"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 878
    const-string v4, "timestamp_utc"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 890
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showToast()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0a197d

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 893
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v4, v5

    .line 894
    goto/16 :goto_0

    .line 881
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 882
    const-string v4, "timestamp_utc"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 885
    const-string v4, "changed_id"

    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    const-string v4, "timestamp_utc"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 898
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "timeStamp":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v4, v5

    .line 899
    goto/16 :goto_0

    .line 840
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f10010b -> :sswitch_1
        0x7f10010c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "myplacehelp"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 397
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 402
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    .line 404
    :cond_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 406
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 407
    const-string v3, "value"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 408
    iput-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 410
    :cond_1
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 412
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 413
    const-string v3, "value"

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 415
    :cond_2
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_3

    .line 416
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 417
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 418
    const-string v3, "value"

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    :cond_3
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v3, :cond_4

    .line 421
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 422
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 423
    const-string v3, "value"

    const/4 v4, 0x4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    :cond_4
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v3, :cond_5

    .line 426
    iput-boolean v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 428
    :cond_5
    iput v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    .line 429
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 431
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 432
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 433
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1676
    instance-of v6, p1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    if-eqz v6, :cond_0

    .line 1678
    check-cast p1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->getPrefID()I

    move-result v5

    .line 1680
    .local v5, "prefID":I
    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_5

    .line 1681
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1682
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a1980

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1719
    .end local v5    # "prefID":I
    :cond_0
    :goto_0
    return v9

    .line 1684
    .restart local v5    # "prefID":I
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1685
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings.myplace.MyPlaceProfileSettings"

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1686
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 1687
    .local v1, "doNotShowData":Z
    const/4 v2, 0x0

    .line 1689
    .local v2, "doNotShowWlan":Z
    if-eqz v0, :cond_0

    .line 1690
    const-string v6, "DoNotShowDialogData"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1691
    const-string v6, "DoNotShowDialogWlan"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1692
    const-string v6, "enable"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1693
    .local v4, "mCloudChargeEnable":Z
    const-string v6, "MyPlaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doNotShowData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doNotShowWlan="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCloudChargeEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1696
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto :goto_0

    .line 1697
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1698
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto :goto_0

    .line 1700
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V

    goto :goto_0

    .line 1704
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowData":Z
    .end local v2    # "doNotShowWlan":Z
    .end local v4    # "mCloudChargeEnable":Z
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V

    goto :goto_0

    .line 1707
    :cond_5
    const/16 v6, 0x3f3

    if-ne v5, v6, :cond_7

    .line 1708
    const-string v6, "MyPlaceSettings"

    const-string v7, "PREF wifi is clicked. start wifi network picker"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1710
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "extra_location_services"

    const-string v7, "location"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    :cond_6
    invoke-virtual {p0, v3, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1712
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v6, 0x3f4

    if-ne v5, v6, :cond_0

    .line 1713
    const-string v6, "MyPlaceSettings"

    const-string v7, "PREF bt is clicked. start bt device picker"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1715
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 907
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isLBHsuport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 909
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 910
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 911
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a1983

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c00d6

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndexMAP()I

    move-result v8

    new-instance v9, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    .line 1143
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 955
    :cond_3
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isLBHsuport()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v6

    if-nez v6, :cond_5

    .line 958
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a1980

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 960
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 961
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings.myplace.MyPlaceProfileSettings"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 962
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 963
    .local v1, "doNotShowData":Z
    const/4 v2, 0x0

    .line 965
    .local v2, "doNotShowWlan":Z
    if-eqz v0, :cond_2

    .line 966
    const-string v6, "DoNotShowDialogData"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 967
    const-string v6, "DoNotShowDialogWlan"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 968
    const-string v6, "enable"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 969
    .local v5, "mCloudChargeEnable":Z
    const-string v6, "MyPlaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doNotShowData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doNotShowWlan="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCloudChargeEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 972
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto/16 :goto_0

    .line 973
    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v6

    if-nez v6, :cond_7

    .line 974
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto/16 :goto_0

    .line 976
    :cond_7
    const-string v6, "MyPlaceSettings"

    const-string v7, "map is clicked. start mapview"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 978
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v6, ""

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 979
    :cond_8
    const-string v6, "location"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    :cond_9
    const-string v6, "map_latitude"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    const-string v6, "map_longtitude"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    const/4 v6, 0x3

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 986
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowData":Z
    .end local v2    # "doNotShowWlan":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "mCloudChargeEnable":Z
    :cond_a
    const-string v6, "MyPlaceSettings"

    const-string v7, "map is clicked. start mapview"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 988
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    const-string v6, ""

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 989
    :cond_b
    const-string v6, "location"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    :cond_c
    const-string v6, "map_latitude"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    const-string v6, "map_longtitude"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    const/4 v6, 0x3

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 995
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_d
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_f

    .line 996
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 997
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 998
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a1983

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c00d4

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v8

    new-instance v9, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;

    invoke-direct {v9, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1059
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_f
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1060
    :cond_10
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1061
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1062
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a1983

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c00d5

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v8

    new-instance v9, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;

    invoke-direct {v9, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;

    invoke-direct {v8, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    .line 1135
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    iput-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    .line 1136
    iget-boolean v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v6, :cond_2

    .line 1137
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto/16 :goto_0

    .line 1139
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_11
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 356
    const-string v2, "MyPlaceSettings"

    const-string v3, "onResume() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 358
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 361
    .local v0, "pref":Landroid/content/SharedPreferences;
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-nez v2, :cond_6

    .line 362
    const-string v2, "value"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "value":I
    if-ne v1, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    if-eqz v2, :cond_3

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    .line 365
    iput-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 378
    .end local v1    # "value":I
    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 379
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 380
    return-void

    .line 366
    .restart local v1    # "value":I
    :cond_3
    if-ne v1, v6, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 367
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 368
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 369
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    .line 370
    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0

    .line 373
    .end local v1    # "value":I
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v5, :cond_7

    .line 374
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    goto :goto_0

    .line 375
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v6, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0
.end method

.method resetPlaceInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1363
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1364
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1365
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1366
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1367
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v3, v1, v3

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 1368
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1369
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1370
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1372
    return-void
.end method

.method resetPlacePartialInfo(I)V
    .locals 6
    .param p1, "prep"    # I

    .prologue
    const-wide/16 v4, 0x0

    const v3, 0x7f0a143e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1376
    packed-switch p1, :pswitch_data_0

    .line 1411
    :goto_0
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPlacePartialInfo() : menu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ater Type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    .line 1413
    return-void

    .line 1379
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1381
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1382
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1383
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 1384
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1393
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1394
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto/16 :goto_0

    .line 1396
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1402
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1404
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1405
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto/16 :goto_0

    .line 1407
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showToast()Z
    .locals 8

    .prologue
    .line 1601
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1602
    .local v0, "build_model":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 1603
    .local v5, "locale":Ljava/util/Locale;
    const-string v2, ""

    .line 1604
    .local v2, "isUS_MODEL":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1606
    .local v1, "isATT":Z
    const/4 v4, 0x0

    .line 1608
    .local v4, "isUS_PRODUCT_MODEL":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "getprop ro.csc.sales_code"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1610
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1612
    .local v3, "isUS_MODEL_BUFFER_READER":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1613
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 1614
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1615
    if-eqz v2, :cond_1

    .line 1617
    if-eqz v0, :cond_1

    .line 1618
    const-string v6, "SM-N900"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "SGH-I337"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "ATT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "en_US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 1622
    const/4 v1, 0x1

    .line 1629
    .end local v3    # "isUS_MODEL_BUFFER_READER":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v1

    .line 1626
    :catch_0
    move-exception v6

    goto :goto_0
.end method
