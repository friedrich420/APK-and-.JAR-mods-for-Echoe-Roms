.class Landroid/view/ScaleGestureDetector$SaveState;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveState"
.end annotation


# instance fields
.field mLenBeforeSqrt:F

.field mSpanX:F

.field mSpanY:F

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F

.field final synthetic this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p0}, reset()V

    .line 184
    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 187
    iput v0, p0, maxY:F

    iput v0, p0, maxX:F

    iput v0, p0, minY:F

    iput v0, p0, minX:F

    .line 188
    iput v0, p0, mLenBeforeSqrt:F

    .line 189
    iput v0, p0, mSpanX:F

    .line 190
    iput v0, p0, mSpanY:F

    .line 191
    return-void
.end method
