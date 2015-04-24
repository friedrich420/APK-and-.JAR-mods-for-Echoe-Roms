.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mInteractiveHelp:Z

.field private static mIsDeviceProfileShown:Z

.field public static mIsForegroundBtSettings:Z

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mLocalAdapterNameTemp:Ljava/lang/String;

.field private static mNewOrientation:I

.field private static mOldOrientation:I

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private isEnableTalkback:Z

.field private isHelpDialogHidden:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mButtonBar:Landroid/widget/RelativeLayout;

.field private mButtonView:Landroid/widget/TextView;

.field private mDeviceName:Landroid/app/DialogFragment;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitialScanStarted:Z

.field private mIsDiscovering1:Z

.field private mIsDiscovering2:Z

.field private mIsEmergencyMode:Z

.field private mMyDeviceCategory:Landroid/preference/PreferenceCategory;

.field mMyDevicePreference:Landroid/preference/CheckBoxPreference;

.field private mNoDevicesPreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mScan:Landroid/view/MenuItem;

.field private mScanButton:Landroid/widget/Button;

.field mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field private mShowVisibileTimeoutFragment:Z

.field private mTimeOutFragment:Landroid/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 131
    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 179
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 182
    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 183
    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    .line 186
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 192
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 1101
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering1:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering2:Z

    .line 181
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    .line 184
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 188
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    .line 931
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 224
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    return p1
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 117
    sput-boolean p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    return p0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 663
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 665
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 668
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 669
    return-void
.end method

.method private getActionBarView()Landroid/view/View;
    .locals 8

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1085
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1086
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 1087
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar_container"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1088
    .local v1, "resId":I
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method public static getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1097
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method public static isDeviceProfileShown()Z
    .locals 1

    .prologue
    .line 1036
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    return v0
.end method

.method private isNeedScanButton(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1080
    invoke-static {p1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 10
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 673
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 674
    .local v0, "messageId":I
    const-string v4, "BluetoothSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateContent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", InitialScanStarted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    packed-switch p1, :pswitch_data_0

    .line 847
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 849
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v4, :cond_2

    .line 851
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 853
    :cond_2
    :goto_1
    return-void

    .line 678
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 679
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 680
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 683
    const v0, 0x7f0a0132

    .line 684
    goto :goto_0

    .line 688
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_4

    .line 689
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    .line 691
    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    const v7, 0x7f0a1dac

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 692
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 693
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 694
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 697
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_5

    .line 699
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    .line 703
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "device_name"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 705
    sget-object v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 706
    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 708
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 713
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0201d4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 718
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 719
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 720
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 723
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_7

    .line 724
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, v7, v8, v9}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 727
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume(Landroid/content/Context;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 734
    :cond_7
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_e

    .line 735
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 741
    :goto_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_f

    .line 742
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 747
    :goto_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v7, 0x7f0a02f9

    sget-object v8, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 750
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 752
    .local v2, "numberOfPairedDevices":I
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v4, :cond_8

    .line 753
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 767
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_9

    .line 768
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v7, 0x7f0a02fa

    sget-object v8, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 772
    :cond_9
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 773
    .local v1, "numberOfAvailableDevices":I
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 774
    if-nez v1, :cond_a

    .line 775
    if-eqz v2, :cond_10

    .line 776
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 777
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 784
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accessibility_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "enabled_accessibility_services"

    invoke-static {v4, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "(?i).*talkback.*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isEnableTalkback:Z

    .line 787
    if-nez v2, :cond_17

    .line 788
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 789
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_12

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isEnableTalkback:Z

    if-nez v4, :cond_12

    .line 790
    const-string v4, "BluetoothSettings"

    const-string v6, "updateContent :: startScanning()"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 792
    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering1:Z

    if-eqz v4, :cond_c

    .line 793
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 825
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 715
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_d
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0201c9

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    goto/16 :goto_2

    .line 737
    :cond_e
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_3

    .line 744
    :cond_f
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_4

    .line 778
    .restart local v1    # "numberOfAvailableDevices":I
    .restart local v2    # "numberOfPairedDevices":I
    :cond_10
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_a

    .line 779
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_11
    move v4, v6

    .line 784
    goto :goto_6

    .line 796
    :cond_12
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_13

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 799
    :cond_13
    if-nez v1, :cond_c

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_c

    .line 800
    const-string v4, "BluetoothSettings"

    const-string v7, "updateContent :: No nearby BT devices found"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_14

    .line 803
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 804
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 806
    :cond_14
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v4, :cond_15

    .line 807
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 809
    :cond_15
    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v4, :cond_16

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_16

    .line 810
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v7, 0x7f04002f

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 814
    :goto_8
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 815
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 816
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 812
    :cond_16
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v7, 0x7f040030

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_8

    .line 820
    :cond_17
    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering2:Z

    if-eqz v4, :cond_c

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto/16 :goto_7

    .line 829
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0a0158

    .line 830
    goto/16 :goto_0

    .line 833
    :pswitch_2
    const v0, 0x7f0a0304

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 835
    const v0, 0x7f0a0132

    .line 837
    :cond_18
    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_0

    .line 842
    :pswitch_3
    const v0, 0x7f0a0157

    .line 843
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOptionsMenu()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 586
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 595
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 596
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v1, 0x7f0a0941

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v1, 0x7f0a012d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v1, 0x7f0a012d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 609
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 610
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 611
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isNeedScanButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 617
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 624
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 626
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isNeedScanButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 629
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 630
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 291
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v2, :cond_0

    .line 292
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 322
    :goto_0
    return-void

    .line 295
    :cond_0
    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 299
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 300
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 306
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 307
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020628

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020629

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 318
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 320
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1093
    const v0, 0x7f0a0e59

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 974
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 975
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 977
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    :cond_0
    return-void
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1044
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1045
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1046
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1047
    const/4 v4, 0x1

    .line 1050
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f090054

    const/4 v3, 0x0

    .line 235
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 236
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x1020004

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 240
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 245
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v2

    sput v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isNeedScanButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f100077

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    .line 259
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 260
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    :goto_1
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    .line 266
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    const v3, 0x7f0a012d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 267
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 269
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 271
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 282
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 284
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 287
    .end local v0    # "clickListener":Landroid/view/View$OnClickListener;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 236
    goto/16 :goto_0

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 229
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothScanDialog;

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 230
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttach, mBtScanDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 857
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 858
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 861
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->dismissDisconnectDialog()V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 868
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 449
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 984
    const-string v2, "BluetoothSettings"

    const-string v5, "onCreate"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 990
    :try_start_0
    const-string v2, "com.samsung.helphub"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-lt v2, v5, :cond_3

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 1000
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 1002
    sput-boolean v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 1007
    :cond_0
    if-eqz p1, :cond_2

    .line 1009
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v2, :cond_1

    .line 1010
    const-string v2, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 1012
    :cond_1
    const-string v2, "isBtDiscovering1"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering1:Z

    .line 1013
    const-string v2, "isBtDiscovering2"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering2:Z

    .line 1016
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 1017
    return-void

    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_3
    move v2, v4

    .line 990
    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 453
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v6, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 457
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_5

    move v1, v4

    .line 458
    .local v1, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 460
    .local v2, "isDiscovering":Z
    if-eqz v2, :cond_6

    const v3, 0x7f0a0941

    .line 462
    .local v3, "textId":I
    :goto_2
    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    .line 464
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-eq v6, v4, :cond_0

    .line 472
    const/4 v4, 0x3

    const v6, 0x7f0a0124

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 475
    const/4 v4, 0x4

    const v6, 0x7f0a0149

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    if-nez v4, :cond_2

    .line 479
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 480
    const v4, 0x7f0a1449

    invoke-interface {p1, v5, v8, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 488
    :cond_2
    :goto_3
    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 489
    const/4 v4, 0x5

    const v6, 0x7f0a014a

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 492
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 493
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    const-string v4, "ChinaNalSecurity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 495
    const/4 v4, 0x6

    const v6, 0x7f0a01d6

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 500
    .end local v0    # "ChinaNalSecurityType":Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto/16 :goto_0

    .end local v1    # "bluetoothIsEnabled":Z
    .end local v2    # "isDiscovering":Z
    .end local v3    # "textId":I
    :cond_5
    move v1, v5

    .line 457
    goto/16 :goto_1

    .line 460
    .restart local v1    # "bluetoothIsEnabled":Z
    .restart local v2    # "isDiscovering":Z
    :cond_6
    const v3, 0x7f0a012d

    goto/16 :goto_2

    .line 483
    .restart local v3    # "textId":I
    :cond_7
    const v4, 0x7f0a144a

    invoke-interface {p1, v5, v8, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 1076
    return-void

    .line 1064
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "BluetoothSettings"

    const-string v2, "Unable to dismiss Fragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 922
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 923
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 928
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 929
    return-void

    .line 926
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto :goto_0
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 656
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 658
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 659
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0a01d6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 505
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 581
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 508
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    const-string v0, "BluetoothSettings"

    const-string v1, "onOptionsItemSelected :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    :cond_0
    :goto_1
    move v0, v12

    .line 517
    goto :goto_0

    .line 513
    :cond_1
    const-string v0, "BluetoothSettings"

    const-string v1, "onOptionsItemSelected :: stopScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_1

    .line 523
    :pswitch_1
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.settings.DEVICE_NAME_DIALOG"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v11, "renameIntent":Landroid/content/Intent;
    const/high16 v0, 0x800000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0, v11}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v12

    .line 526
    goto :goto_0

    .line 533
    .end local v11    # "renameIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 534
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "visibility timeout"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v12

    .line 537
    goto :goto_0

    .line 539
    :pswitch_3
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v12

    .line 541
    goto :goto_0

    .line 544
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_4
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v0, :cond_3

    .line 545
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 547
    const-string v0, "default"

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v12

    .line 548
    goto/16 :goto_0

    .line 553
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 554
    .local v8, "info":Landroid/content/pm/PackageInfo;
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 555
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v10, "intent_help":Landroid/content/Intent;
    const-string v0, "helphub:section"

    const-string v1, "bluetooth"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "intent_help":Landroid/content/Intent;
    :cond_3
    :goto_2
    move v0, v12

    .line 567
    goto/16 :goto_0

    .line 558
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 559
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .restart local v10    # "intent_help":Landroid/content/Intent;
    const-string v0, "helphub:appid"

    const-string v1, "bluetooth"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 563
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "intent_help":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 564
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 570
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_6

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothOnCheckSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_5
    :goto_3
    move v0, v12

    .line 579
    goto/16 :goto_0

    .line 574
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_5

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothOnCheckSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_3

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 422
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 326
    sput-boolean v10, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 329
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_0

    .line 330
    sput-boolean v9, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 336
    :cond_1
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v9, :cond_7

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    if-eqz v0, :cond_7

    .line 340
    const-string v0, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before showing help dialog in tablet + isHelpDialogHidden = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->showHelpDialog(Landroid/app/Activity;)V

    .line 342
    const-string v0, "BluetoothSettings"

    const-string v3, "after showing help dialog in tablet"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-boolean v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isNeedScanButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    const v3, 0x7f0a012d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActionBarView()Landroid/view/View;

    move-result-object v6

    .line 354
    .local v6, "actionBar":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 355
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume(Landroid/content/Context;)V

    .line 362
    :cond_4
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v0, :cond_5

    .line 363
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_8

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 366
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0a0132

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 416
    :cond_6
    :goto_2
    return-void

    .line 346
    .end local v6    # "actionBar":Landroid/view/View;
    :cond_7
    const-string v0, "BluetoothSettings"

    const-string v3, "showing help dialog in tablet failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v6    # "actionBar":Landroid/view/View;
    :cond_8
    move v0, v10

    .line 363
    goto :goto_1

    .line 374
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_a

    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 378
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    if-eqz v0, :cond_b

    .line 380
    iput-boolean v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 382
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-nez v0, :cond_b

    .line 385
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 386
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "visibility timeout"

    invoke-virtual {v0, v3, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 391
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNewOrientation:I

    .line 398
    :cond_c
    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 399
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 400
    .local v8, "isBluetoothEnabled":Z
    new-array v4, v9, [Ljava/lang/String;

    const-string v0, "true"

    aput-object v0, v4, v10

    .line 401
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isBluetoothEnabledWithMsg"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 403
    .local v7, "cr":Landroid/database/Cursor;
    if-eqz v7, :cond_d

    .line 404
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 405
    const-string v0, "isBluetoothEnabledWithMsg"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v8, v9

    .line 407
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_d
    if-nez v8, :cond_6

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_2

    :cond_e
    move v8, v10

    .line 405
    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    const-string v0, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1030
    :cond_0
    const-string v0, "isBtDiscovering1"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering1:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1031
    const-string v0, "isBtDiscovering2"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1032
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1033
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 872
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 873
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering1:Z

    .line 874
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDiscovering2:Z

    .line 878
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->isNeedScanButton(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 879
    if-eqz p1, :cond_6

    const v0, 0x7f0a0941

    .line 880
    .local v0, "textId":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 885
    .end local v0    # "textId":I
    :cond_0
    if-nez p1, :cond_8

    .line 886
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 889
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v1, :cond_1

    .line 890
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 892
    :cond_1
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v1, :cond_7

    .line 893
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v2, 0x7f04002f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 897
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 898
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 899
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 908
    :cond_2
    :goto_2
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v1, :cond_4

    .line 909
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_3

    .line 910
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 912
    :cond_3
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtnStateUpdate()V

    .line 915
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 916
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 918
    :cond_5
    return-void

    .line 879
    :cond_6
    const v0, 0x7f0a012d

    goto/16 :goto_0

    .line 895
    :cond_7
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v2, 0x7f040030

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_1

    .line 902
    :cond_8
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 903
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 648
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 649
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method
