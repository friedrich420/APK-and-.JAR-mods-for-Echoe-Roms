.class Lcom/android/settings/location/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;I)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    iput p2, p0, Lcom/android/settings/location/LocationSettings$5;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    iget v1, p0, Lcom/android/settings/location/LocationSettings$5;->val$dialogId:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/location/LocationSettings;->access$100(Lcom/android/settings/location/LocationSettings;ILjava/lang/Boolean;)V

    .line 589
    return-void
.end method
