.class Landroid/widget/RemoteViewsAdapter$5;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .registers 2

    .prologue
    .line 1343
    iput-object p1, p0, this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1346
    iget-object v0, p0, this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    monitor-enter v1

    .line 1347
    :try_start_7
    iget-object v0, p0, this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    .line 1348
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1c

    .line 1350
    iget-object v0, p0, this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1351
    iget-object v0, p0, this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$700(Landroid/widget/RemoteViewsAdapter;)V

    .line 1352
    return-void

    .line 1348
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
