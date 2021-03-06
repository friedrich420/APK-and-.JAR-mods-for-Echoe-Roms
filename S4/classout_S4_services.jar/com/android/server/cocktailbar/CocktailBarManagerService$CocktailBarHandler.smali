.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarHandler;
.super Landroid/os/Handler;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarHandler"
.end annotation


# static fields
.field public static final COCKTAIL_BAR_REBOOT:I = 0x3e9

.field public static final COCKTAIL_BAR_SHUTDOWN:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 588
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .line 589
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 590
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 593
    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: entry what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 602
    :goto_22
    return-void

    .line 596
    :pswitch_23
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_22

    .line 599
    :pswitch_2d
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "GlobalActions restart"

    invoke-static {v0, v1, v3}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_22

    .line 594
    nop

    :pswitch_data_3a
    .packed-switch 0x3e8
        :pswitch_23
        :pswitch_2d
    .end packed-switch
.end method
