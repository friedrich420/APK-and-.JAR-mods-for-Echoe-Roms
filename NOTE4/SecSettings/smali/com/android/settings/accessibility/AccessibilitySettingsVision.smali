.class public Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F

.field private static final isReminderTwo:Z

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkSetupWizard:Z

.field private final mAccessControlObserver:Landroid/database/ContentObserver;

.field private mColorBlind:Landroid/preference/SwitchPreferenceScreen;

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private final mGlobalGestureObserver:Landroid/database/ContentObserver;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

.field private mLcdCurtain:Landroid/preference/CheckBoxPreference;

.field private final mMagnification:Landroid/database/ContentObserver;

.field private final mMagnifier:Landroid/database/ContentObserver;

.field private mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

.field private final mNotificationReminderObserver:Landroid/database/ContentObserver;

.field private final mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mRapidKeyInput:Landroid/preference/CheckBoxPreference;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSpokenServiceAvailble:Z

.field private mSupportFolderType:Z

.field private mToggleHighTextContrastPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleInversionPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUserSetupCompleted:Z

.field private mVisionCategory:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isReminderTwo:Z

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->LARGE_FONT_SCALE:F

    .line 120
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    .line 160
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 208
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 220
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 234
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    .line 249
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifier:Landroid/database/ContentObserver;

    .line 264
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 277
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    .line 292
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    .line 299
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    .line 314
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGestureObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateVisionService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isPowerSavingEnabled()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->writeFontSizePreference(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/preference/ListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->readFontSizePreference(Landroid/preference/ListPreference;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 1085
    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v4, :cond_0

    .line 1086
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "indices":[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1097
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_4

    .line 1098
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1099
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_3

    .line 1100
    add-int/lit8 v4, v0, -0x1

    .line 1104
    .end local v3    # "thisVal":F
    :goto_2
    return v4

    .line 1087
    .end local v0    # "i":I
    .end local v1    # "indices":[Ljava/lang/String;
    .end local v2    # "lastVal":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    if-eqz v4, :cond_1

    .line 1088
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 1090
    .end local v1    # "indices":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1091
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 1093
    .end local v1    # "indices":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 1102
    .restart local v0    # "i":I
    .restart local v2    # "lastVal":F
    .restart local v3    # "thisVal":F
    :cond_3
    move v2, v3

    .line 1097
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1104
    .end local v3    # "thisVal":F
    :cond_4
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method private handleDisplayMagnificationPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    const v5, 0x7f0a0a0b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 901
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 902
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0a0a0a

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 905
    :cond_0
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0a0d

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :goto_0
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 913
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 914
    return-void

    .line 908
    :cond_1
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0a0c

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 911
    goto :goto_1
.end method

.method private handleTogglEnableAccessibilityGesturePreferenceClick(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 890
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 891
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0a0a11

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v3, "summary"

    const v4, 0x7f0a0a14

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 898
    return-void

    :cond_0
    move v1, v2

    .line 895
    goto :goto_0
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 803
    return-void

    .line 801
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 887
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_text_contrast_enabled"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleHighTextContrastPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 920
    return-void

    .line 917
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 923
    const-string v4, "high_contrast"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    .line 925
    const-string v4, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleHighTextContrastPreference:Landroid/preference/CheckBoxPreference;

    .line 927
    const-string v4, "toggle_inversion_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 928
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 930
    const-string v4, "daltonizer_preference_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 932
    const-string v4, "lcd_curtain"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    .line 934
    const-string v4, "rapid_key_input"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    .line 936
    const-string v4, "toggle_speak_password_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 937
    const-string v4, "vision_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    .line 938
    const-string v4, "tts_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 939
    .local v0, "TTSSettings":Landroid/preference/PreferenceScreen;
    const-string v4, "font_size"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/FontSizeListPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 940
    const-string v4, "color_blind"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    .line 942
    const-string v4, "screen_magnification_preference_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 943
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 945
    const-string v4, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 946
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 947
    const-string v4, "notification_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    .line 949
    const-string v4, "magnifier_preference_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 950
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 953
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 954
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 957
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 958
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 961
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "easy_mode_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 962
    .local v1, "isEasyMode":I
    if-nez v1, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    if-eqz v4, :cond_2

    .line 963
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    const v7, 0x7f0a06cb

    invoke-virtual {v4, v7}, Lcom/android/settings/FontSizeListPreference;->setTitle(I)V

    .line 969
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleHighTextContrastPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.samsung.android.app.colorblind"

    invoke-static {v4, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 972
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 979
    :goto_0
    sget-boolean v4, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isReminderTwo:Z

    if-eqz v4, :cond_9

    .line 980
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 985
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 986
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1000
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isTalkbackAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1001
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1002
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1003
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1006
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1007
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1008
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1009
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1046
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "firstRun"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    .line 1047
    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-ne v4, v5, :cond_6

    .line 1048
    const-string v4, "services_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1049
    .local v3, "preferenceRoot":Landroid/preference/Preference;
    invoke-virtual {v3, v9, v9}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1050
    .local v2, "layoutRoot":Landroid/view/View;
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1051
    const/high16 v4, 0x1a40000

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1066
    .end local v2    # "layoutRoot":Landroid/view/View;
    .end local v3    # "preferenceRoot":Landroid/preference/Preference;
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_4
    iput-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    .line 1067
    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v4, :cond_7

    .line 1068
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateFontsizeList(Landroid/preference/ListPreference;)V

    .line 1070
    :cond_7
    return-void

    .line 974
    :cond_8
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 975
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 976
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 982
    :cond_9
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 1011
    :cond_a
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "high_contrast"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1013
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "lcd_curtain"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1016
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilityUtils;->isMdnieSupported()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1017
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1018
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1020
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_b
    move v4, v6

    .line 1011
    goto :goto_5

    :cond_c
    move v4, v6

    .line 1013
    goto :goto_6

    .line 1057
    .restart local v2    # "layoutRoot":Landroid/view/View;
    .restart local v3    # "preferenceRoot":Landroid/preference/Preference;
    :cond_d
    const/high16 v4, 0x1e40000

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_3

    .end local v2    # "layoutRoot":Landroid/view/View;
    .end local v3    # "preferenceRoot":Landroid/preference/Preference;
    :cond_e
    move v5, v6

    .line 1066
    goto :goto_4
.end method

.method private isPowerSavingEnabled()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1332
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "powersaving_switch"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "blackgrey_powersaving_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v0, v3

    .line 1334
    .local v0, "powerSavingModeCheck":Z
    :goto_0
    if-ne v0, v3, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "color_blind"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1336
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "high_contrast"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1338
    :cond_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1339
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1340
    return-void

    .end local v0    # "powerSavingModeCheck":Z
    :cond_1
    move v0, v2

    .line 1332
    goto :goto_0

    .restart local v0    # "powerSavingModeCheck":Z
    :cond_2
    move v1, v3

    .line 1338
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1339
    goto :goto_2
.end method

.method private isTalkbackAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccessibilitySettings_Vision"

    const-string v3, "Screen reader does not installed"

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 1583
    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sInstalledServices:Ljava/util/Set;

    .line 1584
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1586
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 1588
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 1603
    :cond_0
    return-void

    .line 1592
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1593
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1594
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1595
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1599
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 1600
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    .line 1593
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 9
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v8, 0x0

    .line 1109
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->floatToIndex(F)I

    move-result v3

    .line 1117
    .local v3, "index":I
    const-string v5, "AccessibilitySettings_Vision"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1119
    .local v1, "fontIndex":I
    const-string v5, "AccessibilitySettings_Vision"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    if-eqz v5, :cond_1

    .line 1121
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    sget v5, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v1, v5, :cond_0

    .line 1122
    const/4 v3, 0x3

    .line 1123
    const-string v5, "AccessibilitySettings_Vision"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK Easy readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1135
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1137
    .local v4, "res":Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v5, :cond_2

    .line 1138
    const v5, 0x7f0c002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1146
    .local v2, "fontSizeNames":[Ljava/lang/String;
    :goto_2
    const v5, 0x7f0a06cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1148
    return-void

    .line 1110
    .end local v1    # "fontIndex":I
    .end local v2    # "fontSizeNames":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "AccessibilitySettings_Vision"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1126
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fontIndex":I
    .restart local v3    # "index":I
    :cond_1
    sget v5, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    sget v5, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v1, v5, :cond_0

    .line 1127
    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    .line 1128
    const-string v5, "AccessibilitySettings_Vision"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1139
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    if-eqz v5, :cond_3

    .line 1140
    const v5, 0x7f0c002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fontSizeNames":[Ljava/lang/String;
    goto :goto_2

    .line 1141
    .end local v2    # "fontSizeNames":[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1142
    const v5, 0x7f0c002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fontSizeNames":[Ljava/lang/String;
    goto :goto_2

    .line 1144
    .end local v2    # "fontSizeNames":[Ljava/lang/String;
    :cond_4
    const v5, 0x7f0c0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fontSizeNames":[Ljava/lang/String;
    goto :goto_2
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 767
    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "register ContentObserver"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifier:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_accessibility_global_gesture_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 785
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 788
    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "unregister ContentObserver"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifier:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 793
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 798
    return-void
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 5
    .param p1, "fontSizePref"    # Landroid/preference/ListPreference;

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    if-eqz v3, :cond_0

    .line 1623
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, "values":[Ljava/lang/CharSequence;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v1, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1630
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1625
    .end local v0    # "i":I
    .end local v1    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2    # "values":[Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "values":[Ljava/lang/CharSequence;
    goto :goto_0

    .line 1633
    .restart local v0    # "i":I
    .restart local v1    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1635
    return-void
.end method

.method private updateExclusiveTalkback()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 744
    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "TalkbackOnChagne "

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 747
    .local v0, "settingValue":Z
    const-string v1, "AccessibilitySettings_Vision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.Secure.ACCESSIBILITY_ENABLED,  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rapid_key_input_menu_checked"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "updateExclusiveTalkback : Rapid key input on"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rapid_key_input"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 756
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 764
    :goto_0
    return-void

    .line 758
    :cond_1
    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "updateExclusiveTalkback : Rapid key input off"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rapid_key_input"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 760
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 761
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 762
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 7
    .param p1, "fontSizePref"    # Landroid/preference/ListPreference;

    .prologue
    .line 1606
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1609
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1611
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 1612
    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1616
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1617
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1618
    return-void
.end method

.method private updateSettingsScreen()V
    .locals 14

    .prologue
    const v13, 0x7f0a0a5f

    const v12, 0x7f0a0a5e

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 667
    const-string v10, "AccessibilitySettings_Vision"

    const-string v11, "onChange() "

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_display_magnification_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1

    move v4, v8

    .line 670
    .local v4, "magnificationEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_display_daltonizer_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_2

    move v2, v8

    .line 672
    .local v2, "daltonizerEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_magnifier"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_3

    move v5, v8

    .line 674
    .local v5, "magnifierEnabled":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "high_contrast"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    move v6, v8

    .line 676
    .local v6, "negativeColorEnabled":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    move v0, v8

    .line 678
    .local v0, "colorBlindEnabled":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "notification_reminder"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    move v7, v8

    .line 680
    .local v7, "notificationReminderEnabled":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enable_accessibility_global_gesture_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_7

    move v3, v8

    .line 683
    .local v3, "globalGestureEnabled":Z
    :goto_6
    if-eqz v4, :cond_8

    .line 684
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 689
    :goto_7
    if-eqz v2, :cond_9

    .line 690
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 695
    :goto_8
    if-eqz v5, :cond_a

    .line 696
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 701
    :goto_9
    if-eqz v6, :cond_b

    .line 702
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 707
    :goto_a
    if-eqz v0, :cond_c

    .line 708
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 713
    :goto_b
    if-eqz v7, :cond_d

    .line 714
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 719
    :goto_c
    if-eqz v3, :cond_e

    .line 720
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 725
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-ne v10, v8, :cond_0

    .line 726
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "high_contrast"

    invoke-static {v10, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_f

    move v10, v8

    :goto_e
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 728
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "lcd_curtain"

    invoke-static {v10, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_10

    move v10, v8

    :goto_f
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 730
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "notification_reminder"

    invoke-static {v10, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_11

    move v10, v8

    :goto_10
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind_test"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_12

    move v10, v8

    :goto_11
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 735
    .local v1, "colorBlind_switch_check":Ljava/lang/Boolean;
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "accessibility_display_magnification_enabled"

    invoke-static {v10, v12, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_13

    move v10, v8

    :goto_12
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 737
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_magnifier"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_14

    :goto_13
    invoke-virtual {v10, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 739
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 741
    .end local v1    # "colorBlind_switch_check":Ljava/lang/Boolean;
    :cond_0
    return-void

    .end local v0    # "colorBlindEnabled":Z
    .end local v2    # "daltonizerEnabled":Z
    .end local v3    # "globalGestureEnabled":Z
    .end local v4    # "magnificationEnabled":Z
    .end local v5    # "magnifierEnabled":Z
    .end local v6    # "negativeColorEnabled":Z
    .end local v7    # "notificationReminderEnabled":Z
    :cond_1
    move v4, v9

    .line 668
    goto/16 :goto_0

    .restart local v4    # "magnificationEnabled":Z
    :cond_2
    move v2, v9

    .line 670
    goto/16 :goto_1

    .restart local v2    # "daltonizerEnabled":Z
    :cond_3
    move v5, v9

    .line 672
    goto/16 :goto_2

    .restart local v5    # "magnifierEnabled":Z
    :cond_4
    move v6, v9

    .line 674
    goto/16 :goto_3

    .restart local v6    # "negativeColorEnabled":Z
    :cond_5
    move v0, v9

    .line 676
    goto/16 :goto_4

    .restart local v0    # "colorBlindEnabled":Z
    :cond_6
    move v7, v9

    .line 678
    goto/16 :goto_5

    .restart local v7    # "notificationReminderEnabled":Z
    :cond_7
    move v3, v9

    .line 680
    goto/16 :goto_6

    .line 686
    .restart local v3    # "globalGestureEnabled":Z
    :cond_8
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_7

    .line 692
    :cond_9
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_8

    .line 698
    :cond_a
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_9

    .line 704
    :cond_b
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_a

    .line 710
    :cond_c
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_b

    .line 716
    :cond_d
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_c

    .line 722
    :cond_e
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_d

    :cond_f
    move v10, v9

    .line 726
    goto/16 :goto_e

    :cond_10
    move v10, v9

    .line 728
    goto/16 :goto_f

    :cond_11
    move v10, v9

    .line 730
    goto/16 :goto_10

    :cond_12
    move v10, v9

    .line 732
    goto/16 :goto_11

    .restart local v1    # "colorBlind_switch_check":Ljava/lang/Boolean;
    :cond_13
    move v10, v9

    .line 735
    goto :goto_12

    :cond_14
    move v8, v9

    .line 737
    goto :goto_13
.end method

.method private updateVisionPreferences()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1264
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateVisionService()V

    .line 1267
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "accessibility_display_magnification_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1271
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "accessibility_magnifier"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1274
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleHighTextContrastPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "high_text_contrast_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1279
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1283
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1286
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1287
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isTalkbackAvailable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1288
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1289
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1300
    :cond_1
    :goto_6
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 1303
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "color_blind"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "color_blind_test"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    move v2, v3

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1306
    .local v0, "colorBlind_switch_check":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1309
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "speak_password"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    move v1, v3

    .line 1311
    .local v1, "speakPasswordEnabled":Z
    :goto_8
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 1312
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1313
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1314
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1319
    :cond_2
    :goto_9
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input_menu_checked"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    :goto_a
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1322
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isPowerSavingEnabled()V

    .line 1323
    return-void

    .end local v0    # "colorBlind_switch_check":Ljava/lang/Boolean;
    .end local v1    # "speakPasswordEnabled":Z
    :cond_3
    move v2, v4

    .line 1267
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 1271
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 1274
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 1279
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 1283
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 1289
    goto :goto_5

    .line 1293
    :cond_9
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1294
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_b
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_6

    :cond_a
    move v2, v4

    goto :goto_b

    :cond_b
    move v2, v4

    .line 1303
    goto :goto_7

    .restart local v0    # "colorBlind_switch_check":Ljava/lang/Boolean;
    :cond_c
    move v1, v4

    .line 1309
    goto :goto_8

    .line 1316
    .restart local v1    # "speakPasswordEnabled":Z
    :cond_d
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_9

    :cond_e
    move v3, v4

    .line 1319
    goto :goto_a
.end method

.method private updateVisionService()V
    .locals 23

    .prologue
    .line 1178
    const/4 v3, 0x0

    .line 1179
    .local v3, "AccessibilityApplicationKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    .line 1181
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v14

    .line 1183
    .local v14, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 1185
    .local v10, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "accessibility_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v5, 0x1

    .line 1188
    .local v5, "accessibilityEnabled":Z
    :goto_0
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "count":I
    :goto_1
    if-ge v12, v8, :cond_0

    .line 1189
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1190
    .local v13, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v13, :cond_2

    .line 1261
    .end local v13    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    return-void

    .line 1185
    .end local v5    # "accessibilityEnabled":Z
    .end local v8    # "count":I
    .end local v12    # "i":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1193
    .restart local v5    # "accessibilityEnabled":Z
    .restart local v8    # "count":I
    .restart local v12    # "i":I
    .restart local v13    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 1194
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1196
    .local v19, "title":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 1197
    .local v17, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 1201
    const-string v20, "AccessibilitySettings_Vision"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AccessibilityApplicationKey : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1204
    if-eqz v5, :cond_6

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v16, 0x1

    .line 1206
    .local v16, "serviceEnabled":Z
    :goto_2
    if-eqz v16, :cond_7

    .line 1207
    const v20, 0x7f0a0a5e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1212
    :goto_3
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 1213
    const-class v20, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 1214
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 1216
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1217
    .local v11, "extras":Landroid/os/Bundle;
    const-string v20, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v20, "checked"

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1219
    const-string v20, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v9

    .line 1222
    .local v9, "description":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1223
    const v20, 0x7f0a0aa2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1225
    :cond_3
    const-string v20, "summary"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v18

    .line 1228
    .local v18, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1229
    const-string v20, "settings_title"

    const v21, 0x7f0a0a32

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v20, "settings_component_name"

    new-instance v21, Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_4
    const-string v20, "component_name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1238
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "com.google.android.marvin.talkback"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1241
    .local v4, "AccessibilityApplicationPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_5

    .line 1242
    const-string v20, "AccessibilitySettings_Vision"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Talkback is already added, so remove this menu, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1245
    :cond_5
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1188
    .end local v4    # "AccessibilityApplicationPreference":Landroid/preference/Preference;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1204
    .end local v9    # "description":Ljava/lang/String;
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v16    # "serviceEnabled":Z
    .end local v18    # "settingsClassName":Ljava/lang/String;
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1209
    .restart local v16    # "serviceEnabled":Z
    :cond_7
    const v20, 0x7f0a0a5f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1247
    .restart local v9    # "description":Ljava/lang/String;
    .restart local v11    # "extras":Landroid/os/Bundle;
    .restart local v18    # "settingsClassName":Ljava/lang/String;
    :cond_8
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "com.googlecode.eyesfree.brailleback"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1250
    .restart local v4    # "AccessibilityApplicationPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_9

    .line 1251
    const-string v20, "AccessibilitySettings_Vision"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Brailleback is already added, so remove this menu, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1254
    :cond_9
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/settings/accessibility/AccessibilitySettings;->isBraillebackInstalled:Z

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 1257
    .end local v4    # "AccessibilityApplicationPreference":Landroid/preference/Preference;
    :cond_a
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    .line 1258
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/accessibility/AccessibilitySettings;->isBraillebackInstalled:Z

    goto :goto_4
.end method

.method private writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1153
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1154
    .local v1, "fontScale":F
    const-string v2, "AccessibilitySettings_Vision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1156
    :cond_0
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 1157
    sget v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->LARGE_FONT_SCALE:F

    .line 1158
    const-string v2, "AccessibilitySettings_Vision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1165
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .end local v1    # "fontScale":F
    :goto_0
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccessibilitySettings_Vision"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$12;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 423
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 656
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 657
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6b5

    if-ne p1, v1, :cond_0

    .line 658
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_COLORBLIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "colorChipReportIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->finish()V

    .line 664
    .end local v0    # "colorChipReportIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 340
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    .line 343
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->addPreferencesFromResource(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSetupCompleted(Landroid/content/ContentResolver;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    .line 345
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->initializeAllPreferences()V

    .line 348
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 350
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "targetKey":Ljava/lang/String;
    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    if-ne v3, v2, :cond_1

    .line 353
    .local v2, "value":Z
    :goto_0
    const-string v3, "screen_magnification_preference_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 357
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 391
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v1    # "targetKey":Ljava/lang/String;
    .end local v2    # "value":Z
    :cond_0
    :goto_1
    return-void

    .line 351
    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v1    # "targetKey":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 360
    .restart local v2    # "value":Z
    :cond_2
    const-string v3, "magnifier_preference_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 364
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 367
    :cond_3
    const-string v3, "notification_preference"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 371
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 374
    :cond_4
    const-string v3, "color_blind"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 375
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 378
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_5
    const-string v3, "enable_global_gesture_preference_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 385
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "dialogId"    # I

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1346
    const/4 v8, 0x0

    .line 1578
    :goto_0
    return-object v8

    .line 1348
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1349
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1350
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040194

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1351
    .local v3, "layout":Landroid/view/View;
    const v8, 0x7f1003cc

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1352
    .local v1, "fontSizePopup":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1353
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0082

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    :cond_1
    const v8, 0x7f100167

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1356
    .local v5, "mcheck":Landroid/widget/CheckBox;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1360
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 1578
    :pswitch_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1362
    :pswitch_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0a9d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0a9e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto :goto_0

    .line 1391
    :pswitch_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0084

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$15;

    invoke-direct {v10, p0, v0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 1404
    :pswitch_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0abf

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0ac0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$18;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$18;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$17;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$17;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/accessibility/AccessibilitySettingsVision$16;

    invoke-direct {v9, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$16;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 1437
    :pswitch_4
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1439
    :cond_2
    const v8, 0x7f0a0a0a

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1440
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0a48

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1442
    .local v6, "message":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0a1333

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0a114c

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1447
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0a1619

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1454
    .end local v7    # "name":Ljava/lang/String;
    :goto_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0a46

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$21;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$21;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$20;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$20;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;

    invoke-direct {v9, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 1451
    .end local v6    # "message":Ljava/lang/String;
    :cond_3
    const v8, 0x7f0a0a47

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/String;
    goto :goto_1

    .line 1519
    .end local v6    # "message":Ljava/lang/String;
    :pswitch_5
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1520
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0ac1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0ac2

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;

    invoke-direct {v9, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 1570
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0a0e41

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0

    .line 1360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 461
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->unregisterContentObserver()V

    .line 463
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 466
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 467
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v12, p2

    .line 489
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->floatToIndex(F)I

    move-result v4

    .line 490
    .local v4, "fontIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "font_size"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 492
    .local v10, "previousIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUserSetupCompleted:Z

    if-eqz v12, :cond_0

    .line 493
    add-int/lit8 v4, v4, 0x3

    .line 496
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "font_size"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    sget v12, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ge v10, v12, :cond_3

    sget v12, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v4, v12, :cond_3

    .line 499
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v5, "i":Landroid/content/Intent;
    const-string v12, "large_font"

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 502
    const-string v12, "AccessibilitySettings_Vision"

    const-string v13, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v12, v13}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v5    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 512
    .local v8, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v12, "pref_font_noti"

    const/4 v13, 0x0

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 514
    .local v3, "do_not_show_again":Ljava/lang/Boolean;
    sget v12, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v4, v12, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_2

    .line 515
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 520
    :cond_2
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 521
    .local v7, "mHandler":Landroid/os/Handler;
    new-instance v12, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/Object;)V

    const-wide/16 v14, 0x3e8

    invoke-virtual {v7, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    const/4 v12, 0x1

    .line 650
    .end local v3    # "do_not_show_again":Ljava/lang/Boolean;
    .end local v4    # "fontIndex":I
    .end local v7    # "mHandler":Landroid/os/Handler;
    .end local v8    # "mSharedPreferences":Landroid/content/SharedPreferences;
    .end local v10    # "previousIndex":I
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_1
    return v12

    .line 503
    .restart local v4    # "fontIndex":I
    .restart local v10    # "previousIndex":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    sget v12, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v10, v12, :cond_1

    sget v12, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ge v4, v12, :cond_1

    .line 504
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .restart local v5    # "i":Landroid/content/Intent;
    const-string v12, "large_font"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 507
    const-string v12, "AccessibilitySettings_Vision"

    const-string v13, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v12, v13}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    .end local v4    # "fontIndex":I
    .end local v5    # "i":Landroid/content/Intent;
    .end local v10    # "previousIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v11, p2

    .line 533
    check-cast v11, Ljava/lang/Boolean;

    .line 535
    .local v11, "value":Ljava/lang/Boolean;
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v9, "notificationReminder":Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    const-string v13, "com.android.settings.accessibility.notificationreminder"

    const-string v14, "com.android.settings.accessibility.notificationreminder.NotificationReminderPreferenceFragment"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 538
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "notification_reminder"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_6

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "time_key"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_5

    .line 545
    const-string v12, "notification reminder"

    const-string v13, "Time interval value has not been set yet"

    invoke-static {v12, v13}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "time_key"

    const/16 v14, 0x12c

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 552
    const-string v12, "Notification Reminder"

    const-string v13, "NotificationReminder Service Start!!"

    invoke-static {v12, v13}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    const v13, 0x7f0a0a5e

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 563
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "notification_reminder"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_4
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 548
    :cond_5
    const-string v12, "notification reminder"

    const-string v13, "Time interval value has already been set and written to DB"

    invoke-static {v12, v13}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 555
    :cond_6
    const-string v12, "AccessibilitySettings_Vision"

    const-string v13, "Notification Reminder service could not start"

    invoke-static {v12, v13}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 558
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 559
    const-string v12, "NotificationReminder"

    const-string v13, "NotificationReminder Service Stop!!"

    invoke-static {v12, v13}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    const v13, 0x7f0a0a5f

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_3

    .line 563
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 566
    .end local v9    # "notificationReminder":Landroid/content/Intent;
    .end local v11    # "value":Ljava/lang/Boolean;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v11, p2

    .line 567
    check-cast v11, Ljava/lang/Boolean;

    .line 569
    .restart local v11    # "value":Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 571
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 598
    :goto_5
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 573
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "color_blind_test"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_d

    .line 574
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v6, "intent":Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    const-string v13, "com.samsung.android.app.colorblind"

    const-string v14, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 576
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 577
    const-string v12, "firstRun"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    :cond_b
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 580
    const-string v12, "fromAccessibility"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    const/16 v12, 0x6b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 583
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 587
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_d
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.settings.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v5    # "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "color_blind"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_5

    .line 594
    .end local v5    # "i":Landroid/content/Intent;
    :cond_e
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.settings.ACTION_COLORBLIND_SWITCH_OFF"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .restart local v5    # "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "color_blind"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 599
    .end local v5    # "i":Landroid/content/Intent;
    .end local v11    # "value":Ljava/lang/Boolean;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    move-object/from16 v11, p2

    .line 600
    check-cast v11, Ljava/lang/Boolean;

    .line 601
    .restart local v11    # "value":Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 602
    .local v2, "bAirFeatureEnabled":Z
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 603
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "air_view_master_onoff"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_11

    .line 605
    const/4 v2, 0x1

    .line 619
    :cond_10
    :goto_6
    const/4 v12, 0x1

    if-ne v2, v12, :cond_18

    .line 620
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 631
    :goto_7
    const-string v13, "AccessibilitySettings_Vision"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED Use : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    :goto_8
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 606
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "finger_air_view"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_12

    .line 607
    const/4 v2, 0x1

    goto :goto_6

    .line 608
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pen_writing_buddy"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_14

    .line 610
    const/4 v2, 0x1

    goto :goto_6

    .line 611
    :cond_14
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_16

    :cond_15
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 613
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pen_hovering"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "finger_air_view"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 615
    :cond_17
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 622
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_display_magnification_enabled"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_19

    const/4 v12, 0x1

    :goto_9
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 624
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v13, 0x7f0a0a5e

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_7

    .line 622
    :cond_19
    const/4 v12, 0x0

    goto :goto_9

    .line 627
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_display_magnification_enabled"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v12, 0x1

    :goto_a
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v13, 0x7f0a0a5f

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_7

    .line 627
    :cond_1b
    const/4 v12, 0x0

    goto :goto_a

    .line 631
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 633
    .end local v2    # "bAirFeatureEnabled":Z
    .end local v11    # "value":Ljava/lang/Boolean;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    move-object/from16 v11, p2

    .line 634
    check-cast v11, Ljava/lang/Boolean;

    .line 635
    .restart local v11    # "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_magnifier"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1e

    const/4 v12, 0x1

    :goto_b
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1f

    const v12, 0x7f0a0a5e

    :goto_c
    invoke-virtual {v13, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 638
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 636
    :cond_1e
    const/4 v12, 0x0

    goto :goto_b

    .line 637
    :cond_1f
    const v12, 0x7f0a0a5f

    goto :goto_c

    .line 639
    .end local v11    # "value":Ljava/lang/Boolean;
    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 640
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleToggleInversionPreferenceChange(Z)V

    .line 641
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 642
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    move-object/from16 v11, p2

    .line 643
    check-cast v11, Ljava/lang/Boolean;

    .line 644
    .restart local v11    # "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "checked"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "enable_accessibility_global_gesture_enabled"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_22

    const/4 v12, 0x1

    :goto_d
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_23

    const v12, 0x7f0a0a5e

    :goto_e
    invoke-virtual {v13, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 648
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 646
    :cond_22
    const/4 v12, 0x0

    goto :goto_d

    .line 647
    :cond_23
    const v12, 0x7f0a0a5f

    goto :goto_e

    .line 650
    .end local v11    # "value":Ljava/lang/Boolean;
    :cond_24
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 471
    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 475
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 480
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 808
    iget-boolean v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    sget v6, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 809
    sget v6, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    if-ne v6, v4, :cond_1

    move v3, v4

    .local v3, "value":Z
    :goto_0
    move-object v0, p2

    .line 810
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 812
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 813
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 819
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v3    # "value":Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 820
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleToggleSpeakPasswordPreferenceClick()V

    .line 880
    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 809
    goto :goto_0

    .line 822
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 823
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleTogglEnableAccessibilityGesturePreferenceClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 825
    :cond_3
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 826
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleDisplayMagnificationPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 828
    :cond_4
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleHighTextContrastPreference:Landroid/preference/CheckBoxPreference;

    if-ne v6, p2, :cond_5

    .line 829
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleToggleTextContrastPreferenceClick()V

    goto :goto_1

    .line 831
    :cond_5
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 832
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 834
    const-string v5, "AccessibilitySettings_Vision"

    const-string v6, "updateExclusiveTalkback : Rapid key input on"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 837
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input_menu_checked"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 880
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_1

    .line 839
    :cond_8
    const-string v4, "AccessibilitySettings_Vision"

    const-string v6, "updateExclusiveTalkback : Rapid key input off"

    invoke-static {v4, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "rapid_key_input"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 841
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "rapid_key_input_menu_checked"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 843
    :cond_9
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 844
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "color_blind"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_b

    .line 846
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 847
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "high_contrast"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_a

    :goto_3
    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_3

    .line 849
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "high_contrast"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.negativecolorwidget"

    const-string v7, "pref_negativecolorswidget_noti"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0a145d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->requestDownloadingWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 853
    .local v2, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_2

    .line 856
    .end local v2    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "high_contrast"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 857
    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 858
    .restart local v2    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_2

    .line 860
    .end local v2    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_d
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 861
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-nez v5, :cond_e

    .line 862
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    const-string v5, "com.android.settings.accessibility.colorblind.ColorChipReport"

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 864
    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.colorblind"

    const-string v7, "com.samsung.android.app.colorblind.ColorChipReport"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 866
    const-string v5, "toStartActivity"

    const-string v6, "fromSetting"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-ne v5, v4, :cond_f

    .line 868
    const-string v5, "firstRun"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 870
    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 872
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_10
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 873
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lcd_curtain"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 876
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "lcd_curtain"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, "super_mOpenDetailMenu":Z
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 430
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, ":android:show_fragment"

    const-class v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 441
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 442
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V

    .line 443
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateVisionPreferences()V

    .line 445
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateExclusiveTalkback()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateSettingsScreen()V

    .line 449
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->registerContentObserver()V

    .line 452
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 453
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 456
    return-void
.end method
