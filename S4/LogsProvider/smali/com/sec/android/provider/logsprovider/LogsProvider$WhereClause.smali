.class Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;
.super Ljava/lang/Object;
.source "LogsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhereClause"
.end annotation


# instance fields
.field private final mUpdateVVM:I

.field private final mVVM_where:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "vvm_where"    # Ljava/lang/String;
    .param p2, "updateVVM"    # I

    .prologue
    .line 3682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3683
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mVVM_where:Ljava/lang/String;

    .line 3684
    iput p2, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mUpdateVVM:I

    .line 3685
    return-void
.end method


# virtual methods
.method public final getClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mVVM_where:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateVVM()I
    .locals 3

    .prologue
    .line 3692
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3693
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhereClause getUpdateVVM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mUpdateVVM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    :cond_0
    iget v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mUpdateVVM:I

    return v0
.end method
