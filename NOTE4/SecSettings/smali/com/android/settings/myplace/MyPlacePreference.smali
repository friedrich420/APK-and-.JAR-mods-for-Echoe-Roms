.class public Lcom/android/settings/myplace/MyPlacePreference;
.super Landroid/preference/Preference;
.source "MyPlacePreference.java"


# instance fields
.field private mId:I

.field private mTypeBt:Z

.field private mTypeMap:Z

.field private mTypeWifi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I
    .param p3, "map"    # Z
    .param p4, "wifi"    # Z
    .param p5, "bt"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    iput p2, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    .line 43
    iput-boolean p3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    .line 44
    iput-boolean p4, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeWifi:Z

    .line 45
    iput-boolean p5, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeBt:Z

    .line 47
    const v0, 0x7f040141

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlacePreference;->setLayoutResource(I)V

    .line 48
    const v0, 0x7f04013a

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlacePreference;->setWidgetLayoutResource(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public getMyPlaceId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0202a9

    const v4, 0x7f0202a8

    .line 65
    const v3, 0x7f1002c0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "prefView1":Landroid/view/View;
    const v3, 0x7f1002c1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "prefView2":Landroid/view/View;
    const v3, 0x7f1002c2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "prefView3":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeBt:Z

    if-eqz v3, :cond_2

    .line 70
    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeWifi:Z

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 98
    return-void

    .line 77
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 83
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeWifi:Z

    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 89
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
