.class Lcom/android/settings/FontMenu$1;
.super Ljava/lang/Object;
.source "FontMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontMenu;

.field final synthetic val$objValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/FontMenu;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/FontMenu$1;->this$0:Lcom/android/settings/FontMenu;

    iput-object p2, p0, Lcom/android/settings/FontMenu$1;->val$objValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/FontMenu$1;->this$0:Lcom/android/settings/FontMenu;

    iget-object v1, p0, Lcom/android/settings/FontMenu$1;->val$objValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/settings/FontMenu;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/FontMenu$1;->this$0:Lcom/android/settings/FontMenu;

    iget-object v1, p0, Lcom/android/settings/FontMenu$1;->this$0:Lcom/android/settings/FontMenu;

    # getter for: Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;
    invoke-static {v1}, Lcom/android/settings/FontMenu;->access$000(Lcom/android/settings/FontMenu;)Lcom/android/settings/FontSizeListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/FontMenu;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 245
    return-void
.end method
