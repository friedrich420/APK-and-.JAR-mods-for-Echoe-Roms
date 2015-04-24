.class Lcom/android/launcher2/MenuView$1;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuView;->packagesChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuView;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/launcher2/MenuView$1;->this$0:Lcom/android/launcher2/MenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    .line 383
    return-void
.end method
