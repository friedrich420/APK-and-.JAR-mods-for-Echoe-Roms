.class public Lcom/android/settings/myplace/MyPlaceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MyPlaceSettings.java"


# instance fields
.field private mCount:I

.field private mMenu:Landroid/view/Menu;

.field private mUnclickPref:Lcom/android/settings/UnclickablePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    return-void
.end method

.method private updateMyPlaceList()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 151
    .local v8, "parentPreference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 153
    new-instance v1, Lcom/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v1, v11, v2}, Lcom/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    .line 154
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    const v11, 0x7f0a1975

    invoke-virtual {v1, v11}, Lcom/android/settings/UnclickablePreference;->setTitle(I)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    .line 160
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "db count : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v11, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    :cond_0
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "location_type : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "location_type"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timestamp_utc : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "timestamp_utc"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "name"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "address : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "address"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "latitude : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "latitude"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "longitude : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "longitude"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifi_name : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "wifi_name"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifi_bssid : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "wifi_bssid"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bluetooth_name : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "bluetooth_name"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bluetooth_mac_address : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "bluetooth_mac_address"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v9, ""

    .local v9, "summary":Ljava/lang/String;
    const-string v7, ""

    .line 177
    .local v7, "comma":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "typeMap":Z
    const/4 v4, 0x0

    .local v4, "typeWifi":Z
    const/4 v5, 0x0

    .line 179
    .local v5, "typeBt":Z
    const-string v1, "location_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    .line 180
    const/4 v3, 0x1

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1985

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    const-string v7, ", "

    .line 185
    :cond_1
    const-string v1, "location_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_2

    .line 186
    const/4 v4, 0x1

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1823

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    const-string v7, ", "

    .line 191
    :cond_2
    const-string v1, "location_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_3

    .line 192
    const/4 v5, 0x1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1827

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 196
    :cond_3
    new-instance v0, Lcom/android/settings/myplace/MyPlacePreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/myplace/MyPlacePreference;-><init>(Landroid/content/Context;IZZZ)V

    .line 198
    .local v0, "tmpPref":Landroid/preference/Preference;
    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "tmpTitle":Ljava/lang/String;
    const-string v1, "Home"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 201
    const v1, 0x7f0a1977

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 211
    :cond_4
    :goto_0
    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    .end local v0    # "tmpPref":Landroid/preference/Preference;
    .end local v3    # "typeMap":Z
    .end local v4    # "typeWifi":Z
    .end local v5    # "typeBt":Z
    .end local v7    # "comma":Ljava/lang/String;
    .end local v9    # "summary":Ljava/lang/String;
    .end local v10    # "tmpTitle":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 221
    return-void

    .line 202
    .restart local v0    # "tmpPref":Landroid/preference/Preference;
    .restart local v3    # "typeMap":Z
    .restart local v4    # "typeWifi":Z
    .restart local v5    # "typeBt":Z
    .restart local v7    # "comma":Ljava/lang/String;
    .restart local v9    # "summary":Ljava/lang/String;
    .restart local v10    # "tmpTitle":Ljava/lang/String;
    :cond_7
    const-string v1, "Car"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    const v1, 0x7f0a1979

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 204
    :cond_8
    const-string v1, "Work"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 205
    const v1, 0x7f0a1978

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 206
    :cond_9
    const-string v1, "Gym"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 207
    const v1, 0x7f0a197a

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 208
    :cond_a
    const-string v1, "School"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    const v1, 0x7f0a197b

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->addPreferencesFromResource(I)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->setHasOptionsMenu(Z)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 78
    const v0, 0x7f0a096d

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020221

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 82
    const/4 v0, 0x2

    const v1, 0x7f0a1991

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 84
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    .line 87
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 94
    :pswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "id"

    const/4 v6, -0x1

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v1, "edit_mode"

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v1, "add_mode"

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v1, "lbs_mode"

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 102
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a096d

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 107
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 105
    .local v3, "pa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0a096d

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 110
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "pa":Landroid/preference/PreferenceActivity;
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v6, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v6, "com.android.settings"

    const-string v7, "RMMP"

    invoke-static {v1, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 115
    .local v4, "sa2":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f0a0952

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 120
    .end local v4    # "sa2":Lcom/android/settings/SettingsActivity;
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 118
    .local v5, "pa2":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x7f0a0952

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 226
    const/16 v16, -0x1

    .line 227
    .local v16, "placeId":I
    const/4 v15, 0x0

    .line 229
    .local v15, "itemTitle":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/settings/myplace/MyPlacePreference;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlacePreference;->getMyPlaceId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 234
    const-string v2, "MyPlaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick(), Preference is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-ltz v16, :cond_5

    .line 238
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 239
    .local v8, "args":Landroid/os/Bundle;
    const-string v2, "id"

    move/from16 v0, v16

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v2, "edit_mode"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 243
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_4

    .line 244
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    .line 245
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v5, v15

    .line 247
    .end local v15    # "itemTitle":Ljava/lang/String;
    .local v5, "itemTitle":Ljava/lang/String;
    :cond_0
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_1

    .line 248
    const-string v2, "name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 249
    const-string v2, "Car"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    const-string v2, "car_mode"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    :goto_0
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_3

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 259
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    const-class v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 266
    .end local v1    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v13    # "c":Landroid/database/Cursor;
    :goto_1
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_2
    return v2

    .line 230
    .end local v5    # "itemTitle":Ljava/lang/String;
    .restart local v15    # "itemTitle":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 231
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "MyPlaceSettings"

    const-string v3, "onPreferenceTreeClick(), Preference is not a MyPlacePreference. return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x0

    move-object v5, v15

    .end local v15    # "itemTitle":Ljava/lang/String;
    .restart local v5    # "itemTitle":Ljava/lang/String;
    goto :goto_2

    .line 261
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v8    # "args":Landroid/os/Bundle;
    .restart local v13    # "c":Landroid/database/Cursor;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 262
    .local v6, "pa":Landroid/preference/PreferenceActivity;
    const-class v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v10, v5

    move-object/from16 v11, p0

    invoke-virtual/range {v6 .. v12}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .end local v5    # "itemTitle":Ljava/lang/String;
    .end local v6    # "pa":Landroid/preference/PreferenceActivity;
    .restart local v15    # "itemTitle":Ljava/lang/String;
    :cond_4
    move-object v5, v15

    .end local v15    # "itemTitle":Ljava/lang/String;
    .restart local v5    # "itemTitle":Ljava/lang/String;
    goto :goto_0

    .end local v5    # "itemTitle":Ljava/lang/String;
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v13    # "c":Landroid/database/Cursor;
    .restart local v15    # "itemTitle":Ljava/lang/String;
    :cond_5
    move-object v5, v15

    .end local v15    # "itemTitle":Ljava/lang/String;
    .restart local v5    # "itemTitle":Ljava/lang/String;
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 128
    const/4 v0, 0x3

    .line 129
    .local v0, "fixedMenuNum":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const/4 v0, 0x5

    .line 132
    :cond_0
    const-string v2, "MyPlaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareOptionsMenu, mCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 134
    .local v1, "menuDel":Landroid/view/MenuItem;
    iget v2, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    if-gt v2, v0, :cond_2

    .line 135
    if-eqz v1, :cond_1

    .line 136
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_3

    .line 143
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020221

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 147
    :goto_1
    return-void

    .line 139
    :cond_2
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020143

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 145
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020222

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->updateMyPlaceList()V

    .line 65
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 66
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020221

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020222

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
