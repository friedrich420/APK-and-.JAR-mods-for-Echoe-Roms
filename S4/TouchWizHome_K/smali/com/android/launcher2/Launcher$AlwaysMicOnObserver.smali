.class Lcom/android/launcher2/Launcher$AlwaysMicOnObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlwaysMicOnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    .prologue
    .line 4846
    iput-object p1, p0, Lcom/android/launcher2/Launcher$AlwaysMicOnObserver;->this$0:Lcom/android/launcher2/Launcher;

    .line 4847
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4848
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4852
    iget-object v1, p0, Lcom/android/launcher2/Launcher$AlwaysMicOnObserver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4853
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher2/Launcher$AlwaysMicOnObserver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->content_uri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4854
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 4855
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4856
    const-string v1, "isDSPEnabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4857
    .local v7, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4858
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    goto :goto_0

    .line 4860
    :cond_0
    sput-boolean v8, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    goto :goto_0

    .line 4862
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4867
    :goto_1
    return-void

    .line 4864
    :cond_2
    sput-boolean v8, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    goto :goto_1
.end method
