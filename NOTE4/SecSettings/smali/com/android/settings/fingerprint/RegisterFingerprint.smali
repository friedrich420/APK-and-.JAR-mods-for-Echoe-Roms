.class public Lcom/android/settings/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;
    }
.end annotation


# static fields
.field private static levelFingerprintService:I


# instance fields
.field private DoNotRemoveByForce:Z

.field private final INVALID_ID:I

.field private ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

.field private aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private fromShowGuidewithTipDialog:Z

.field private isEnrolled:Z

.field private isForODE:Z

.field private mAnimationImage:Landroid/widget/ImageView;

.field private mArrowImage:Landroid/widget/ImageView;

.field private mBackEnabled:Z

.field private mBlock:Z

.field private mCurrentProgressBarCount:I

.field private mEventProgressBarCount:I

.field private mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFingerprintConfirmCount:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsFinishedScanning:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mLL_StepView:Landroid/widget/LinearLayout;

.field private mLeftSideView:Landroid/view/View;

.field private mOwnName:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPreviousStage:Ljava/lang/String;

.field private mPrivProgressBarCount:I

.field private mRegisterError:Landroid/widget/RelativeLayout;

.field mRegisterErrorHandler:Landroid/os/Handler;

.field private mRegisterErrorImage:Landroid/widget/ImageView;

.field mRegisterErrorRunnable:Ljava/lang/Runnable;

.field private mRegisterErrorText:Landroid/widget/TextView;

.field private mRegisterGuideText:Landroid/widget/TextView;

.field private mRegisterStep1:Landroid/widget/ImageView;

.field private mRegisterStep10:Landroid/widget/ImageView;

.field private mRegisterStep2:Landroid/widget/ImageView;

.field private mRegisterStep3:Landroid/widget/ImageView;

.field private mRegisterStep4:Landroid/widget/ImageView;

.field private mRegisterStep5:Landroid/widget/ImageView;

.field private mRegisterStep6:Landroid/widget/ImageView;

.field private mRegisterStep7:Landroid/widget/ImageView;

.field private mRegisterStep8:Landroid/widget/ImageView;

.field private mRegisterStep9:Landroid/widget/ImageView;

.field private mRegisterguide:Landroid/widget/VideoView;

.field private mRequestedQuality:I

.field private mRightSideView:Landroid/view/View;

.field private mTipDialog:Landroid/app/AlertDialog;

.field private mToken:Landroid/os/IBinder;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTweenAni:Landroid/view/animation/Animation;

.field private mfromOnehandGrip:Ljava/lang/Boolean;

.field private pRunnable:Ljava/lang/Runnable;

.field private selectedFingerIndex:I

.field private sensorIsRemoved:Z

.field private triangleAnimation:Landroid/view/animation/Animation;

.field video:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->levelFingerprintService:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->INVALID_ID:I

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    .line 90
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    .line 91
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    .line 92
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    .line 93
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    .line 94
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    .line 95
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    .line 96
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    .line 97
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    .line 98
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    .line 118
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    .line 123
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    .line 132
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z

    .line 138
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    .line 139
    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCurrentProgressBarCount:I

    .line 141
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    .line 146
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLeftSideView:Landroid/view/View;

    .line 147
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRightSideView:Landroid/view/View;

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    .line 152
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    .line 153
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    .line 157
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 163
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 1031
    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    .prologue
    .line 979
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 980
    return-void
.end method

.method private EnableSystemKey()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 983
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 986
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->ready_animation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->scanned_animation()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSupportedOnehand(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3402(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->putKnoxPasswordPolicy(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->initRegisterfingerprint()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startTipDialog()V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    return p1
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 973
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 974
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 976
    :cond_0
    return-void
.end method

.method private eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 573
    move-object v0, p1

    .line 575
    .local v0, "evt":Lcom/samsung/android/fingerprint/FingerprintEvent;
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 759
    return-void
.end method

.method private getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1296
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1297
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1298
    .local v1, "Res":Landroid/content/res/Resources;
    const/4 v4, -0x1

    .line 1301
    .local v4, "resourceId":I
    :try_start_0
    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1307
    if-nez v1, :cond_0

    .line 1308
    const-string v5, "RegisterFingerprint"

    const-string v6, "resource is not ready"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :goto_0
    return-object v0

    .line 1302
    :catch_0
    move-exception v2

    .line 1303
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1311
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v5, "anim"

    const-string v6, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1313
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1314
    const-string v5, "RegisterFingerprint"

    const-string v6, "resourceId is invalid"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1318
    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1320
    .local v0, "Drawable":Landroid/graphics/drawable/AnimationDrawable;
    goto :goto_0
.end method

.method private initRegisterfingerprint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 886
    const-string v0, "RegisterFingerprint"

    const-string v1, "initRegisterfingerprint"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    .line 888
    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    .line 889
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a1ae0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 891
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 892
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 893
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 896
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 897
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 899
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 902
    return-void
.end method

.method private static isSupportedOnehand(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 999
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1002
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1006
    :goto_0
    return v2

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RegisterFingerprint"

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

    .line 1006
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private putKnoxPasswordPolicy(Landroid/content/Intent;)V
    .locals 2
    .param p1, "mIntent"    # Landroid/content/Intent;

    .prologue
    .line 1355
    const-string v0, "isFromKnoxSetupWizard"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1356
    const-string v0, "lockscreen.password_min"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1357
    const-string v0, "lockscreen.password_max"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1358
    const-string v0, "lockscreen.password_type"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1360
    const-string v0, "lockscreen.password_min_letters"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    const-string v0, "lockscreen.password_min_lowercase"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    const-string v0, "lockscreen.password_min_uppercase"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1363
    const-string v0, "lockscreen.password_min_numeric"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1364
    const-string v0, "lockscreen.password_min_symbols"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    const-string v0, "lockscreen.password_min_nonletter"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1367
    :cond_0
    return-void
.end method

.method private ready_animation()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    .line 174
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    const-string v0, "RegisterFingerprint"

    const-string v1, "arrowAnimation  startStandbyAnimationstartStandbyAnimationstartStandbyAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    return-void
.end method

.method private registerClient()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 549
    :cond_1
    const/4 v0, 0x0

    .line 551
    .local v0, "clientSpec":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 552
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 557
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    .line 559
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 554
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
    .line 989
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 992
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 996
    :goto_0
    return v2

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RegisterFingerprint"

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

    .line 996
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private scanned_animation()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    .line 185
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    .line 206
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    :cond_1
    return-void
.end method

.method private setPolicyFromKnox(Landroid/content/Intent;)V
    .locals 5
    .param p1, "mIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1341
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    .line 1342
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    const-string v1, "lockscreen.password_min"

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    .line 1343
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    const-string v1, "lockscreen.password_max"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    .line 1344
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1345
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    const-string v1, "lockscreen.password_min_letters"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    .line 1346
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    const-string v1, "lockscreen.password_min_uppercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    .line 1347
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    const-string v1, "lockscreen.password_min_lowercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    .line 1348
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    const-string v1, "lockscreen.password_min_numeric"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    .line 1349
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    const-string v1, "lockscreen.password_min_symbols"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    .line 1350
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    const-string v1, "lockscreen.password_min_nonletter"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    .line 1352
    :cond_0
    return-void
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 8
    .param p1, "imageQuality"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 762
    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v2

    .line 763
    .local v2, "iconID":I
    invoke-static {p1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 766
    .local v0, "animID":Landroid/graphics/drawable/AnimationDrawable;
    :try_start_0
    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageQuality["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 768
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 771
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    .line 772
    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$5;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    .line 777
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 779
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_0

    .line 780
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v1

    .line 783
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "undefined imageQuality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    goto :goto_0
.end method

.method private showGuideDialog(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    .line 789
    const-string v3, "RegisterFingerprint"

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

    .line 790
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 791
    const-string v2, ""

    .line 792
    .local v2, "stringForReason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1afd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "errPopupTitle":Ljava/lang/String;
    const/16 v3, 0x65

    if-ne p1, v3, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1b02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1b01

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 803
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$7;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 821
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 822
    return-void

    .line 796
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const/16 v3, 0x66

    if-ne p1, v3, :cond_1

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1b05

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1b04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1b03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showGuidewithTipDialog()V
    .locals 4

    .prologue
    .line 852
    const-string v1, "RegisterFingerprint"

    const-string v2, "showGuidewithTipDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 854
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1b03

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b04

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1a99

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$12;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$11;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$10;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 883
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 884
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 826
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 828
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1b06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$8;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 848
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 849
    return-void
.end method

.method private startOncreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    .line 316
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fromOnehandGrip"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    .line 321
    const-string v1, "fingerIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    .line 322
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[selectedFingerIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 325
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[previousStage] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 334
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    .line 339
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto :goto_0

    .line 337
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method private startTipDialog()V
    .locals 8

    .prologue
    const v7, 0x7f100206

    .line 906
    const-string v4, "RegisterFingerprint"

    const-string v5, "startTipDialog"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 908
    const-string v4, "RegisterFingerprint"

    const-string v5, "startTipDialog is already exist"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 912
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 914
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 915
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400cb

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 917
    .local v3, "layout":Landroid/view/View;
    const-string v1, "&#8226 "

    .line 918
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

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    const v4, 0x7f100208

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1acd

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    const v4, 0x7f100209

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1ace

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 923
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0200fe

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 932
    :goto_1
    const v4, 0x7f0a1a9a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 933
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 934
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$13;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$13;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 942
    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$14;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$14;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 953
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    .line 954
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 925
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 926
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020100

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 928
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0200ff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private unregisterClient()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 565
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    .line 568
    :cond_0
    return-void
.end method

.method private updateRegisterFingerprint()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 352
    invoke-static {p0}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    const v0, 0x7f0400c7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    .line 357
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const v0, 0x7f1001dd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLeftSideView:Landroid/view/View;

    .line 359
    const v0, 0x7f1001e1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRightSideView:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLeftSideView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRightSideView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 363
    :cond_0
    const v0, 0x7f1001f2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterGuideText:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f1001f3

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    .line 366
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterGuideText:Landroid/widget/TextView;

    const v1, 0x7f0a1ad9

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 369
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :goto_1
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    .line 379
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 380
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorImage:Landroid/widget/ImageView;

    .line 381
    const v0, 0x7f100201

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorText:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f1001f4

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;

    .line 384
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a1ae0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 386
    const v0, 0x7f1001f5

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;

    .line 387
    const v0, 0x7f1001f6

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    .line 388
    const v0, 0x7f1001f7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    .line 389
    const v0, 0x7f1001f8

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    .line 390
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;

    .line 391
    const v0, 0x7f1001fa

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;

    .line 392
    const v0, 0x7f1001fb

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;

    .line 393
    const v0, 0x7f1001fc

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;

    .line 394
    const v0, 0x7f1001fd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    .line 395
    const v0, 0x7f1001fe

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    .line 397
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    :cond_1
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    .line 403
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    .line 409
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->configureActionBar()V

    .line 414
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 415
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/fingerprint_help_forefinger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    .line 431
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setStopMusic(Z)V

    .line 438
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startStandbyAnimation()V

    .line 441
    return-void

    .line 355
    :cond_3
    const v0, 0x7f0400c6

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    goto/16 :goto_0

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterGuideText:Landroid/widget/TextView;

    const v1, 0x7f0a1adb

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 418
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/fingerprint_help_forefinger_10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto/16 :goto_2

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/fingerprint_help_onehand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto/16 :goto_2

    .line 424
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/fingerprint_help_twohand_10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto/16 :goto_2

    .line 427
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/fingerprint_help_onehand_10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto/16 :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 214
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3f1

    if-ne p1, v1, :cond_2

    .line 216
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "fingerIndex"

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "ownName"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "fromOnehandGrip"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    .line 226
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_1

    .line 227
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setPolicyFromKnox(Landroid/content/Intent;)V

    .line 229
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivity(Landroid/content/Intent;)V

    .line 237
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 232
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1010
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1011
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 346
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    .line 348
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 269
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    .line 271
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 273
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 275
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 276
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 277
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 281
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "fingerIndex"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    .line 285
    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[selectedFingerIndex] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 287
    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[previousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v3, "ownName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    .line 289
    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ownName] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v3, "for_ode"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    .line 294
    const-string v3, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    .line 295
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-eqz v3, :cond_1

    .line 296
    const-string v3, "RegisterFingerprint"

    const-string v4, "isFromKnoxSetupWizard - RegisterFingerprint OnCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setPolicyFromKnox(Landroid/content/Intent;)V

    .line 299
    :cond_1
    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v3, :cond_2

    .line 311
    :goto_0
    return-void

    .line 302
    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 303
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v3

    if-nez v3, :cond_3

    .line 304
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    .line 308
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto :goto_0

    .line 306
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 503
    const/4 v0, 0x1

    const v1, 0x7f0a0e57

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 506
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 487
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 489
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 492
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RegisterFingerprint"

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

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "dp"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 1029
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 249
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 250
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    if-eqz v2, :cond_0

    .line 260
    :goto_0
    return v1

    .line 254
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enrollResult"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 260
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
    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setIntent(Landroid/content/Intent;)V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startOncreate()V

    .line 245
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 511
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 525
    :goto_0
    return v1

    .line 513
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    .line 514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 515
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enrollResult"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    .line 520
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startTipDialog()V

    goto :goto_0

    .line 511
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

    .line 464
    const-string v1, "RegisterFingerprint"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 466
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z

    .line 467
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->unregisterClient()V

    .line 468
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->EnableSystemKey()V

    .line 469
    iput v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    .line 471
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 475
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    if-nez v1, :cond_1

    .line 476
    const-string v1, "RegisterFingerprint"

    const-string v2, "DoNotRemoveByForce == false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 478
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 482
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$15;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$15;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1020
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 446
    const-string v0, "RegisterFingerprint"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->registerClient()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 453
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    const-string v2, "com.android.settings.permission.unlock"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 456
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    .line 457
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    .line 458
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->DisableSystemKey()V

    .line 460
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 530
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 542
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 533
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected startFailedAnimation()V
    .locals 3

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    .line 1223
    :cond_0
    const-string v1, "RegisterFingerprint"

    const-string v2, "startFailedAnimation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :try_start_0
    const-string v1, "spass_failed"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$20;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    .line 1240
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    .line 1242
    :cond_1
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected startPassAnimation()V
    .locals 7

    .prologue
    .line 1245
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 1246
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1247
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1248
    .local v0, "Res":Landroid/content/res/Resources;
    const/4 v3, -0x1

    .line 1249
    .local v3, "resourceId":I
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v4, :cond_0

    .line 1250
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    .line 1252
    :cond_0
    const-string v4, "RegisterFingerprint"

    const-string v5, "startPassAnimation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :try_start_0
    const-string v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1260
    :goto_0
    if-nez v0, :cond_2

    .line 1261
    const-string v4, "RegisterFingerprint"

    const-string v5, "resource is not ready"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    .end local v0    # "Res":Landroid/content/res/Resources;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "resourceId":I
    :cond_1
    :goto_1
    return-void

    .line 1256
    .restart local v0    # "Res":Landroid/content/res/Resources;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "resourceId":I
    :catch_0
    move-exception v1

    .line 1257
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1264
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v4, "spass_success"

    const-string v5, "anim"

    const-string v6, "com.samsung.android.fingerprint.service"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1266
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    const v4, 0x10a0082

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTweenAni:Landroid/view/animation/Animation;

    .line 1268
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTweenAni:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1270
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTweenAni:Landroid/view/animation/Animation;

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1288
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v4, :cond_1

    .line 1289
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    goto :goto_1
.end method

.method protected startProcessingAnimation()V
    .locals 3

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    .line 1194
    :cond_0
    const-string v1, "RegisterFingerprint"

    const-string v2, "startProcessingAnimation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :try_start_0
    const-string v1, "spass_processing"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$19;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$19;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    .line 1214
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    .line 1216
    :cond_1
    return-void

    .line 1198
    :catch_0
    move-exception v0

    .line 1200
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected startScanningAnimation()V
    .locals 3

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 1129
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    .line 1132
    :cond_0
    const-string v1, "RegisterFingerprint"

    const-string v2, "startScanningAnimation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :try_start_0
    const-string v1, "spass_unlock"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1142
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$17;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    .line 1152
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    .line 1187
    :cond_1
    :goto_1
    return-void

    .line 1136
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1155
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    .line 1158
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1160
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    .line 1161
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$18;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$18;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    .line 1183
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFadeEffect:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1184
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->triangleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method protected startStandbyAnimation()V
    .locals 3

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1101
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    .line 1104
    :cond_0
    const-string v1, "RegisterFingerprint"

    const-string v2, "startStandbyAnimation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :try_start_0
    const-string v1, "spass_standby2"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$16;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$16;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    .line 1120
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    .line 1124
    :goto_1
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1122
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->ready_animation()V

    goto :goto_1
.end method
