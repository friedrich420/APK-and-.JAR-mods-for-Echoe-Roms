.class Lcom/android/launcher2/PagedView$PageInfo;
.super Ljava/lang/Object;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageInfo"
.end annotation


# instance fields
.field public mDistFromCntr:I

.field public mIndex:I

.field public mLowerBound:I

.field public mTransX:I

.field public mTransY:I

.field public mViewCntr:I

.field public mViewCntrRel:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PagedView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/PagedView$1;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/launcher2/PagedView$PageInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 236
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    .line 237
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedView$PageInfo;->mTransY:I

    .line 245
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    .line 246
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 247
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    .line 248
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    .line 249
    return-void
.end method
