.class public Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlowManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/PointCloud;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/multiwaveview/PointCloud;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-object p1, p0, this$0:Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, radius:F

    .line 71
    iput v0, p0, alpha:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    .prologue
    .line 67
    iget v0, p0, x:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    .prologue
    .line 67
    iget v0, p0, y:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    .prologue
    .line 67
    iget v0, p0, radius:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    .prologue
    .line 67
    iget v0, p0, alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .prologue
    .line 94
    iget v0, p0, alpha:F

    return v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 102
    iget v0, p0, radius:F

    return v0
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 78
    iget v0, p0, x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 86
    iget v0, p0, y:F

    return v0
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "a"    # F

    .prologue
    .line 90
    iput p1, p0, alpha:F

    .line 91
    return-void
.end method

.method public setRadius(F)V
    .registers 2
    .param p1, "r"    # F

    .prologue
    .line 98
    iput p1, p0, radius:F

    .line 99
    return-void
.end method

.method public setX(F)V
    .registers 2
    .param p1, "x1"    # F

    .prologue
    .line 74
    iput p1, p0, x:F

    .line 75
    return-void
.end method

.method public setY(F)V
    .registers 2
    .param p1, "y1"    # F

    .prologue
    .line 82
    iput p1, p0, y:F

    .line 83
    return-void
.end method
