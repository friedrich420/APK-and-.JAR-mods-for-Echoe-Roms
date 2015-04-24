.class public final Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;
.source "ScoverState.java"


# instance fields
.field private attached:Z

.field private color:I

.field private heightPixel:I

.field private switchState:Z

.field public type:I

.field private widthPixel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 285
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 286
    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 287
    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 288
    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 289
    iput-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 290
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 304
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 305
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 306
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 307
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 309
    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 323
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 324
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 325
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 326
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 327
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 328
    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 344
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 345
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 346
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 347
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 348
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 349
    return-void
.end method


# virtual methods
.method public final getSwitchState()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    const-string v0, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
