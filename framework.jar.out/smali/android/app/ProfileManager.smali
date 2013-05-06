.class public Landroid/app/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileManager"

.field private static mEmptyProfile:Landroid/app/Profile;

.field private static sService:Landroid/app/IProfileManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/app/Profile;

    const-string v1, "EmptyProfile"

    invoke-direct {v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/app/ProfileManager;->mEmptyProfile:Landroid/app/Profile;

    .line 61
    return-void
.end method

.method public static getService()Landroid/app/IProfileManager;
    .locals 2

    .prologue
    .line 49
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    .line 54
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 52
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "profile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 53
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IProfileManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProfileManager;

    move-result-object v1

    sput-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    .line 54
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    goto :goto_0
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProfile(Landroid/app/Profile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->addProfile(Landroid/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfile()Landroid/app/Profile;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 93
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getActiveProfile()Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/app/ProfileManager;->mEmptyProfile:Landroid/app/Profile;

    goto :goto_0
.end method

.method public getActiveProfileGroup(Ljava/lang/String;)Landroid/app/ProfileGroup;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/app/ProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v1

    .line 268
    .local v1, notificationGroup:Landroid/app/NotificationGroup;
    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Profile;->getDefaultGroup()Landroid/app/ProfileGroup;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;
    .locals 3
    .parameter "uuid"

    .prologue
    .line 258
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 248
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 3

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile(Ljava/lang/String;)Landroid/app/Profile;
    .locals 3
    .parameter "profileName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->getProfileByName(Ljava/lang/String;)Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile(Ljava/util/UUID;)Landroid/app/Profile;
    .locals 3
    .parameter "profileUuid"

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v3

    .line 155
    .local v3, profiles:[Landroid/app/Profile;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 156
    .local v2, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 157
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1           #i:I
    .end local v2           #names:[Ljava/lang/String;
    .end local v3           #profiles:[Landroid/app/Profile;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v2, 0x0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfiles()[Landroid/app/Profile;
    .locals 3

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getProfiles()[Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notificationGroupExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "notificationGroupName"

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->notificationGroupExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public profileExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->profileExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public profileExists(Ljava/util/UUID;)Z
    .locals 3
    .parameter "profileUuid"

    .prologue
    .line 188
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->profileExists(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 230
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProfile(Landroid/app/Profile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->removeProfile(Landroid/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetAll()V
    .locals 3

    .prologue
    .line 278
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->resetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 281
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 4
    .parameter "profileName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 69
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->setActiveProfileByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/util/UUID;)V
    .locals 4
    .parameter "profileUuid"

    .prologue
    const/4 v3, 0x1

    .line 77
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 81
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->setActiveProfile(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->updateNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateProfile(Landroid/app/Profile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->updateProfile(Landroid/app/Profile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
