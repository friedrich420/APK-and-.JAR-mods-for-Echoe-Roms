.class Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;
.super Ljava/lang/Object;
.source "SettingsSearchListPathAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchItemHolder"
.end annotation


# instance fields
.field checkboxMenuType:Landroid/widget/CheckBox;

.field ivMenuDivider:Landroid/widget/ImageView;

.field ivMenuIcon:Landroid/widget/ImageView;

.field switchMenuType:Landroid/widget/Switch;

.field tvMenuSummary:Landroid/widget/TextView;

.field tvMenuTitlte:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;-><init>()V

    return-void
.end method
