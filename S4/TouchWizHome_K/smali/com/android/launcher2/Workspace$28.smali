.class Lcom/android/launcher2/Workspace$28;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->showMagazineCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 4554
    iput-object p1, p0, Lcom/android/launcher2/Workspace$28;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$28;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/android/launcher2/Workspace$28;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 4558
    return-void
.end method
