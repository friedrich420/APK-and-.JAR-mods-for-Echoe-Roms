.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/settings/accessibility/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    # getter for: Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;
    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_2
    return v1

    :cond_0
    move v0, v1

    .line 279
    goto :goto_0

    .line 282
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    goto :goto_2

    .line 283
    :catch_1
    move-exception v0

    goto :goto_2
.end method
