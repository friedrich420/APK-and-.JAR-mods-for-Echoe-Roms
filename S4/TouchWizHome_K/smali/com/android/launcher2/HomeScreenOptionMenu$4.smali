.class Lcom/android/launcher2/HomeScreenOptionMenu$4;
.super Ljava/lang/Object;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeScreenOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$4;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$4;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionSettings()V

    .line 177
    return-void
.end method
