.class Lcom/android/launcher2/HomeView$11;
.super Ljava/lang/Thread;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    iput p3, p0, Lcom/android/launcher2/HomeView$11;->val$appWidgetId:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeView$11;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1798
    return-void
.end method
