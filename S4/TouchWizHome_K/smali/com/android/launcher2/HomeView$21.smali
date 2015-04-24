.class Lcom/android/launcher2/HomeView$21;
.super Landroid/database/ContentObserver;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 3199
    iput-object p1, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 3201
    return-void
.end method
