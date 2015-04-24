.class Lcom/android/launcher2/FestivalPageManager$12;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FestivalPageManager;->showRetry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FestivalPageManager;

.field final synthetic val$festivalKey:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FestivalPageManager;I)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager$12;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iput p2, p0, Lcom/android/launcher2/FestivalPageManager$12;->val$festivalKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/launcher2/FestivalPageManager$12;->this$0:Lcom/android/launcher2/FestivalPageManager;

    # invokes: Lcom/android/launcher2/FestivalPageManager;->checkNetwork()I
    invoke-static {v1}, Lcom/android/launcher2/FestivalPageManager;->access$100(Lcom/android/launcher2/FestivalPageManager;)I

    move-result v0

    .line 840
    .local v0, "netStatus":I
    if-nez v0, :cond_2

    .line 841
    if-eqz p1, :cond_0

    .line 842
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 843
    const/4 p1, 0x0

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/FestivalPageManager$12;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v2, p0, Lcom/android/launcher2/FestivalPageManager$12;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->showRetry(I)V
    invoke-static {v1, v2}, Lcom/android/launcher2/FestivalPageManager;->access$300(Lcom/android/launcher2/FestivalPageManager;I)V

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 848
    iget-object v1, p0, Lcom/android/launcher2/FestivalPageManager$12;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v2, p0, Lcom/android/launcher2/FestivalPageManager$12;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->show_checkbox_dialog(II)V
    invoke-static {v1, v0, v2}, Lcom/android/launcher2/FestivalPageManager;->access$200(Lcom/android/launcher2/FestivalPageManager;II)V

    goto :goto_0

    .line 851
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 852
    const-string v1, "FestivalPageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRetry netStatus wifi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v1, p0, Lcom/android/launcher2/FestivalPageManager$12;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v2, p0, Lcom/android/launcher2/FestivalPageManager$12;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->show_checkbox_dialog(II)V
    invoke-static {v1, v0, v2}, Lcom/android/launcher2/FestivalPageManager;->access$200(Lcom/android/launcher2/FestivalPageManager;II)V

    goto :goto_0
.end method
