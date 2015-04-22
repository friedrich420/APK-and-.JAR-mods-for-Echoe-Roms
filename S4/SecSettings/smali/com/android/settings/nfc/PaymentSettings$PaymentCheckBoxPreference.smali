.class public Lcom/android/settings/nfc/PaymentSettings$PaymentCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentCheckBoxPreference"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 273
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 274
    const v0, 0x7f040138

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings$PaymentCheckBoxPreference;->setLayoutResource(I)V

    .line 275
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 281
    return-void
.end method
