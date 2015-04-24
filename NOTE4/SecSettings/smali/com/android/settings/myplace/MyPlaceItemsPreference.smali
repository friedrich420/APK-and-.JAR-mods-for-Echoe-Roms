.class public Lcom/android/settings/myplace/MyPlaceItemsPreference;
.super Landroid/preference/Preference;
.source "MyPlaceItemsPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mPrefID:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "delListener"    # Landroid/view/View$OnClickListener;
    .param p4, "prefID"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mContext:Landroid/content/Context;

    .line 52
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mPrefID:I

    .line 61
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mContext:Landroid/content/Context;

    .line 62
    iput p4, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mPrefID:I

    .line 64
    const v0, 0x7f040142

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setLayoutResource(I)V

    .line 65
    const v0, 0x7f04013b

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    .line 66
    iput-object p3, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 68
    return-void
.end method


# virtual methods
.method public getPrefID()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mPrefID:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    const v1, 0x7f1002c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "deleteView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
