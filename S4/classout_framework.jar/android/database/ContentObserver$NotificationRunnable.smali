.class final Landroid/database/ContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private final mSelfChange:Z

.field private final mUri:Landroid/net/Uri;

.field private final mUserId:I

.field final synthetic this$0:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V
    .registers 5
    .param p2, "selfChange"    # Z
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "userId"    # I

    .prologue
    .line 208
    iput-object p1, p0, this$0:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-boolean p2, p0, mSelfChange:Z

    .line 210
    iput-object p3, p0, mUri:Landroid/net/Uri;

    .line 211
    iput p4, p0, mUserId:I

    .line 212
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 216
    iget-object v0, p0, this$0:Landroid/database/ContentObserver;

    iget-boolean v1, p0, mSelfChange:Z

    iget-object v2, p0, mUri:Landroid/net/Uri;

    iget v3, p0, mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 217
    return-void
.end method
