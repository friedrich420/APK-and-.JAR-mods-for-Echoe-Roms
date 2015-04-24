.class public final enum Lcom/sec/dtl/launcher/Talk;
.super Ljava/lang/Enum;
.source "Talk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/dtl/launcher/Talk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/dtl/launcher/Talk;

.field public static final enum INSTANCE:Lcom/sec/dtl/launcher/Talk;

.field private static final TAG:Ljava/lang/String; = "Talk"


# instance fields
.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private final mApplication:Landroid/app/Application;

.field private mIsTalkbackEnabled:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechEngine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/sec/dtl/launcher/Talk;

    const-string v1, "INSTANCE"

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/dtl/launcher/Talk;-><init>(Ljava/lang/String;ILandroid/app/Application;)V

    sput-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/dtl/launcher/Talk;

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/dtl/launcher/Talk;->$VALUES:[Lcom/sec/dtl/launcher/Talk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/app/Application;)V
    .locals 1
    .param p3, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    .line 54
    const-string v0, "accessibility"

    invoke-virtual {p3, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 56
    iput-object p3, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    .line 57
    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/sec/dtl/launcher/Talk;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/sec/dtl/launcher/Talk;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/dtl/launcher/Talk;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/sec/dtl/launcher/Talk;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/dtl/launcher/Talk;Ljava/util/Locale;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/dtl/launcher/Talk;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/dtl/launcher/Talk;->setTextToSpeechLanguage(Ljava/util/Locale;)V

    return-void
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTextToSpeechLanguage(Ljava/util/Locale;)V
    .locals 2
    .param p1, "ttsLocale"    # Ljava/util/Locale;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 70
    :pswitch_0
    const-string v0, "Talk"

    const-string v1, "Language is not available defaulting to US English"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "Talk"

    const-string v1, "Could not initialize TextToSpeech US language"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/dtl/launcher/Talk;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/sec/dtl/launcher/Talk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/dtl/launcher/Talk;

    return-object v0
.end method

.method public static values()[Lcom/sec/dtl/launcher/Talk;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->$VALUES:[Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v0}, [Lcom/sec/dtl/launcher/Talk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/dtl/launcher/Talk;

    return-object v0
.end method


# virtual methods
.method public checkTalkbackEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 160
    iget-object v5, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    .line 163
    .local v2, "result":Z
    :try_start_0
    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    const-string v5, "enabled_accessibility_services"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(?i).*talkback.*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 169
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 163
    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackSuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method

.method public isTalkbackEnabled()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkbackSuspend()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    .end local v0    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 97
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 100
    .local v1, "talkBackOn":Z
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->checkTalkbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 103
    :cond_0
    if-eqz v1, :cond_3

    .line 106
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_2

    .line 110
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    new-instance v4, Lcom/sec/dtl/launcher/Talk$1;

    invoke-direct {v4, p0}, Lcom/sec/dtl/launcher/Talk$1;-><init>(Lcom/sec/dtl/launcher/Talk;)V

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 128
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    .line 134
    :cond_2
    :goto_0
    return-void

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    goto :goto_0
.end method

.method public say(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public say(III)V
    .locals 4
    .param p1, "formatResourceId"    # I
    .param p2, "intArg1"    # I
    .param p3, "intArg2"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method public say(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a valid string to speak"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/dtl/launcher/Talk;->setTextToSpeechLanguage(Ljava/util/Locale;)V

    .line 182
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 184
    :cond_1
    return-void
.end method

.method public sayByTalkback(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "evenType"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "checkTouchExploration"    # Z

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 239
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 242
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public sayByTalkback(Landroid/view/View;IIIZ)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "formatResourceId"    # I
    .param p3, "intArg1"    # I
    .param p4, "intArg2"    # I
    .param p5, "checkTouchExploration"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 231
    return-void
.end method

.method public sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "checkTouchExploration"    # Z

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 87
    iput-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 88
    iput-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    .line 91
    return-void
.end method
