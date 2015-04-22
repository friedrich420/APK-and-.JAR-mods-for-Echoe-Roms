.class public Landroid/media/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WFDUibcManager$2;,
        Landroid/media/WFDUibcManager$EventQueue;,
        Landroid/media/WFDUibcManager$EventDispatcher;,
        Landroid/media/WFDUibcManager$Keyevnt_arrC;,
        Landroid/media/WFDUibcManager$UIBC_Mode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final MAX_KEY_EVENTS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private mNegRs_X:F

.field private mNegRs_Y:F

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 76
    iput-object v0, p0, mEventDispatcherThread:Ljava/lang/Thread;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, mOrientation:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, mCoupleShot:Z

    .line 82
    const/high16 v0, 0x44f00000    # 1920.0f

    iput v0, p0, mNegRs_X:F

    .line 83
    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, mNegRs_Y:F

    .line 103
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Landroid/media/WFDUibcManager$1;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/WFDUibcManager$1;-><init>(Landroid/media/WFDUibcManager;Landroid/content/Context;)V

    iput-object v0, p0, mOrientationListener:Landroid/view/OrientationEventListener;

    .line 113
    return-void
.end method

.method static synthetic access$000(Landroid/media/WFDUibcManager;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 69
    iget v0, p0, mOrientation:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/WFDUibcManager;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, mOrientation:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/WFDUibcManager;)F
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 69
    iget v0, p0, mNegRs_Y:F

    return v0
.end method

.method static synthetic access$300(Landroid/media/WFDUibcManager;)F
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 69
    iget v0, p0, mNegRs_X:F

    return v0
.end method

.method static synthetic access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 69
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/WFDUibcManager;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 69
    iget-boolean v0, p0, mCoupleShot:Z

    return v0
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .registers 2
    .param p1, "isCoupleShot"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, mCoupleShot:Z

    .line 211
    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .registers 3
    .param p1, "negRs_X"    # F
    .param p2, "negRs_Y"    # F

    .prologue
    .line 203
    iput p1, p0, mNegRs_X:F

    .line 204
    iput p2, p0, mNegRs_Y:F

    .line 205
    return-void
.end method

.method public start()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .registers 4
    .param p1, "mSessionId"    # I

    .prologue
    .line 121
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 122
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->enableUIBC(I)Z

    .line 124
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, mEventDispatcherThread:Ljava/lang/Thread;

    .line 125
    iget-object v0, p0, mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Lcom/samsung/wfd/WFDNative;->startUIBC(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    iget-object v0, p0, mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 129
    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public stop(I)Z
    .registers 7
    .param p1, "mSessionId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    iget-object v1, p0, mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 140
    iget-object v1, p0, mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_c

    .line 154
    :goto_b
    return v3

    .line 141
    :cond_c
    iget-object v1, p0, mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 142
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stopUIBC()V

    .line 143
    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_1b
    iget-object v1, p0, mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_2f

    .line 149
    :goto_20
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->disableUIBC(I)Z

    .line 150
    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object v4, p0, mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 152
    iput-object v4, p0, mEventDispatcherThread:Ljava/lang/Thread;

    goto :goto_b

    .line 146
    :catch_2f
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method
