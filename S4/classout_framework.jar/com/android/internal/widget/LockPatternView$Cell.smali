.class public Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field static sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field public column:I

.field public row:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    .line 136
    filled-new-array {v4, v4}, [I

    move-result-object v2

    const-class v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$Cell;

    sput-object v2, sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v4, :cond_26

    .line 139
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_13
    if-ge v1, v4, :cond_23

    .line 140
    sget-object v2, sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v2, v2, v0

    new-instance v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v3, v0, v1}, <init>(II)V

    aput-object v3, v2, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 138
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 143
    .end local v1    # "j":I
    :cond_26
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1, p2}, checkRange(II)V

    .line 151
    iput p1, p0, row:I

    .line 152
    iput p2, p0, column:I

    .line 153
    return-void
.end method

.method private static checkRange(II)V
    .registers 4
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    const/4 v0, 0x2

    .line 173
    if-ltz p0, :cond_5

    if-le p0, v0, :cond_e

    .line 174
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_e
    if-ltz p1, :cond_12

    if-le p1, v0, :cond_1a

    .line 177
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1a
    return-void
.end method

.method public static declared-synchronized of(II)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 4
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    .line 168
    const-class v1, Lcom/android/internal/widget/LockPatternView$Cell;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, checkRange(II)V

    .line 169
    sget-object v0, sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    .line 168
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, column:I

    return v0
.end method

.method public getRow()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
