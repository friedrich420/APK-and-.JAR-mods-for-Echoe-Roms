.class public Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
.super Landroid/app/Activity;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;
    }
.end annotation


# instance fields
.field private DoNotRemoveByForce:Z

.field first_line_text:Landroid/widget/TextView;

.field private fromShowGuidewithTipDialog:Z

.field private isEnrolled:Z

.field private isForODE:Z

.field private mBackEnabled:Z

.field mErrorMessage:Landroid/widget/LinearLayout;

.field mErrorText:Landroid/widget/TextView;

.field private mEventProgressBarCount:I

.field mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFingerprintConfirmCount:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsFinishedScanning:Z

.field private mLeftSideView:Landroid/view/View;

.field private mOwnName:Ljava/lang/String;

.field private mPreviousStage:Ljava/lang/String;

.field private mPrivProgressBarCount:I

.field mRegisterErrorHandler:Landroid/os/Handler;

.field mRegisterErrorRunnable:Ljava/lang/Runnable;

.field private mRightSideView:Landroid/view/View;

.field private mTipDialog:Landroid/app/AlertDialog;

.field private mToken:Landroid/os/IBinder;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private pRunnable:Ljava/lang/Runnable;

.field private selectedFingerIndex:I

.field private sensorIsRemoved:Z

.field tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isForODE:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->fromShowGuidewithTipDialog:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z

    .line 78
    iput v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    .line 80
    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 84
    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mLeftSideView:Landroid/view/View;

    .line 85
    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRightSideView:Landroid/view/View;

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    .line 101
    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    .line 103
    new-instance v0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 109
    new-instance v0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 796
    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    .prologue
    .line 719
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 720
    return-void
.end method

.method private EnableSystemKey()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 723
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 726
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuideDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuidewithTipDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isForODE:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->initRegisterfingerprint()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->fromShowGuidewithTipDialog:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintConfirmCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintConfirmCount:I

    return p1
.end method

.method private eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 377
    move-object v0, p1

    .line 379
    .local v0, "evt":Lcom/samsung/android/fingerprint/FingerprintEvent;
    new-instance v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 532
    return-void
.end method

.method private getFingerRegisterText()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 786
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 788
    :cond_1
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 792
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initRegisterfingerprint()V
    .locals 2

    .prologue
    .line 651
    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "initRegisterfingerprint"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    .line 653
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V

    .line 655
    return-void
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 740
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 742
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 746
    :goto_0
    return v2

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerClient()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    const/4 v0, 0x0

    .line 356
    .local v0, "clientSpec":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 357
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 362
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    .line 364
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 359
    :cond_2
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 729
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 732
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 736
    :goto_0
    return v2

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFingerGuideText(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 757
    packed-switch p1, :pswitch_data_0

    .line 783
    :goto_0
    return-void

    .line 759
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e01

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 763
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 767
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 771
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 775
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 779
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0a1e00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 6
    .param p1, "imageQuality"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v1

    .line 538
    .local v1, "iconID":I
    :try_start_0
    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageQuality["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorMessage:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    .line 543
    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    .line 548
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undefined imageQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuidewithTipDialog()V

    goto :goto_0
.end method

.method private showGuideDialog(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    .line 560
    const-string v3, "RegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showGuideDialog [reason] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1aff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "stringForReason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1afe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "errPopupTitle":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$6;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 591
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 592
    return-void
.end method

.method private showGuidewithTipDialog()V
    .locals 4

    .prologue
    .line 618
    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "showGuidewithTipDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 620
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1b03

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Unable to register your fingerprint."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$10;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 647
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 648
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 597
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1b06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$8;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 614
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 615
    return-void
.end method

.method private startOncreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fingerIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    .line 210
    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[selectedFingerIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 213
    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[previousStage] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    if-nez v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 220
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    .line 225
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->updateRegisterFingerprint()V

    goto :goto_0

    .line 223
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method private startTipDialog()V
    .locals 7

    .prologue
    .line 659
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "startTipDialog"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 661
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "startTipDialog is already exist"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 665
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 668
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400cb

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 670
    .local v3, "layout":Landroid/view/View;
    const-string v1, "&#8226 "

    .line 671
    .local v1, "bullet":Ljava/lang/String;
    const v4, 0x7f100207

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1acc

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    const v4, 0x7f100208

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1acd

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    const v4, 0x7f100209

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1ace

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    const v4, 0x7f100206

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0200fe

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    const v4, 0x7f0a1a9a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 682
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 683
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$11;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 690
    new-instance v4, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$12;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 700
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    .line 701
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private unregisterClient()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 370
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    .line 373
    :cond_0
    return-void
.end method

.method private updateRegisterFingerprint()V
    .locals 2

    .prologue
    .line 238
    const v0, 0x7f040235

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setContentView(I)V

    .line 239
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const v0, 0x7f1001dd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mLeftSideView:Landroid/view/View;

    .line 241
    const v0, 0x7f1001e1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRightSideView:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mLeftSideView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRightSideView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 248
    :cond_0
    const v0, 0x7f100518

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V

    .line 251
    const v0, 0x7f100519

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorMessage:Landroid/widget/LinearLayout;

    .line 252
    const v0, 0x7f10051b

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorText:Landroid/widget/TextView;

    .line 253
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 256
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    const-string v0, "RegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->finish()V

    .line 126
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->updateRegisterFingerprint()V

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 158
    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setRequestedOrientation(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 161
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 163
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 165
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 166
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 167
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 171
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 178
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "fingerIndex"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    .line 179
    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[selectedFingerIndex] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v4, "previousStage"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 181
    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[previousStage] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v4, "ownName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    .line 183
    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ownName] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v4, "for_ode"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isForODE:Z

    .line 188
    iget v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    if-nez v4, :cond_1

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 192
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v4

    if-nez v4, :cond_2

    .line 193
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    .line 197
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->updateRegisterFingerprint()V

    .line 198
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->vib:Landroid/os/Vibrator;

    goto :goto_0

    .line 195
    :cond_2
    iput-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 299
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 138
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 139
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    if-eqz v2, :cond_0

    .line 149
    :goto_0
    return v1

    .line 143
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enrollResult"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->finish()V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setIntent(Landroid/content/Intent;)V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->startOncreate()V

    .line 134
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 331
    :goto_0
    return v1

    .line 319
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enrollResult"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->finish()V

    goto :goto_0

    .line 326
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->startTipDialog()V

    goto :goto_0

    .line 317
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 274
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z

    .line 275
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->unregisterClient()V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->EnableSystemKey()V

    .line 278
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 282
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    if-nez v1, :cond_1

    .line 283
    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "DoNotRemoveByForce == false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->finish()V

    .line 289
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 261
    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->registerClient()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    const-string v2, "com.android.settings.permission.unlock"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 265
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    .line 266
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DisableSystemKey()V

    .line 268
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
