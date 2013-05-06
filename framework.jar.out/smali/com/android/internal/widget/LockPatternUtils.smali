.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field protected static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field protected static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field protected static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field protected static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field protected static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field private static final OPTION_ENABLE_FACELOCK:Ljava/lang/String; = "enable_facelock"

.field protected static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field protected static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static PATTERN_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->PATTERN_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    .line 165
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 167
    return-void
.end method

.method public static callPatternToHash(Ljava/util/List;)[B
    .locals 1
    .parameter
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 517
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 518
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 519
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    const/4 v0, 0x1

    .line 518
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 526
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 527
    const/high16 v4, 0x5

    .line 535
    :goto_2
    return v4

    .line 529
    :cond_2
    if-eqz v1, :cond_3

    .line 530
    const/high16 v4, 0x4

    goto :goto_2

    .line 532
    :cond_3
    if-eqz v0, :cond_4

    .line 533
    const/high16 v4, 0x2

    goto :goto_2

    .line 535
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private finishBiometricWeak()V
    .locals 3

    .prologue
    .line 1336
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1341
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1344
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    .line 1199
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1202
    .end local p2
    :goto_0
    return p2

    .line 1201
    .restart local p2
    :catch_0
    move-exception v0

    .line 1202
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 257
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 258
    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    .line 260
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/os/UserId;->getUserId(I)I

    move-result v1

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;I)I
    .locals 3
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    .line 1235
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->getInteger(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1238
    .end local p2
    :goto_0
    return p2

    .line 1237
    .restart local p2
    :catch_0
    move-exception v0

    .line 1238
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 171
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    .line 1217
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1220
    .end local p2
    :goto_0
    return-wide p2

    .line 1219
    .restart local p2
    :catch_0
    move-exception v0

    .line 1220
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 761
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 762
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 764
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-string v3, "lockscreen.password_salt"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "secureSettingKey"

    .prologue
    const/4 v1, 0x0

    .line 1253
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1256
    :goto_0
    return-object v1

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 742
    const/4 v1, 0x0

    .line 756
    :goto_0
    return-object v1

    .line 745
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 746
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 747
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 748
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 749
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    sget v8, Lcom/android/internal/widget/LockPatternUtils;->PATTERN_SIZE:I

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 752
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 753
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 754
    .local v1, hash:[B
    goto :goto_0

    .line 755
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 756
    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 720
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 721
    const-string v4, ""

    .line 730
    :goto_0
    return-object v4

    .line 723
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 725
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 726
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 727
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 728
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    sget v5, Lcom/android/internal/widget/LockPatternUtils;->PATTERN_SIZE:I

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 730
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 4
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1208
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    return-void

    .line 1209
    :catch_0
    move-exception v0

    .line 1211
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setInteger(Ljava/lang/String;I)V
    .locals 4
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1244
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setInteger(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_0
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1247
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setLong(Ljava/lang/String;J)V
    .locals 4
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1226
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1229
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1262
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1265
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 706
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 707
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 708
    aget-byte v0, v1, v2

    .line 709
    .local v0, b:B
    sget v4, Lcom/android/internal/widget/LockPatternUtils;->PATTERN_SIZE:I

    div-int v4, v0, v4

    sget v5, Lcom/android/internal/widget/LockPatternUtils;->PATTERN_SIZE:I

    rem-int v5, v0, v5

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v0           #b:B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    .line 800
    const-string v0, "0123456789ABCDEF"

    .line 801
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 802
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    :cond_0
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .locals 6
    .parameter "password"

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 541
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 557
    :goto_0
    return-void

    .line 545
    :cond_0
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 546
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 547
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :cond_1
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 553
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 288
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPassword([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 290
    :goto_0
    return v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 302
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 303
    .local v2, passwordHashString:Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, passwordHistory:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v5

    .line 308
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 309
    .local v1, passwordHashLength:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 310
    .local v4, passwordHistoryLength:I
    if-eqz v4, :cond_0

    .line 313
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 315
    .local v0, neededPasswordHistoryLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 316
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 318
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 273
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPattern([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 275
    :goto_0
    return v2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clearLock(Z)V
    .locals 4
    .parameter "isFallback"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    :cond_0
    const/high16 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    const-string v0, "lockscreen.password_type"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const-string v0, "lockscreen.password_type_alternate"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method deleteGallery()V
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteTempGallery()V
    .locals 3

    .prologue
    .line 447
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 448
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    return-void
.end method

.method public getActivePasswordQuality()I
    .locals 5

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 373
    .local v0, activePasswordQuality:I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 375
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_0

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 377
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    const/high16 v0, 0x1

    goto :goto_0

    .line 382
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const v0, 0x8000

    goto :goto_0

    .line 387
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const/high16 v0, 0x2

    goto :goto_0

    .line 392
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const/high16 v0, 0x4

    goto :goto_0

    .line 397
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const/high16 v0, 0x5

    goto :goto_0

    .line 402
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const/high16 v0, 0x6

    goto :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_5
    .end sparse-switch
.end method

.method public getCurrentUser()I
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 239
    iget v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    return v0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system process can get the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 5

    .prologue
    const-wide/32 v3, 0x10000

    .line 677
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 681
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 682
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 686
    :cond_0
    return v0
.end method

.method public getLockBeforeUnlock()Z
    .locals 2

    .prologue
    .line 1369
    const-string v0, "lock_before_unlock"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLockPatternSize()I
    .locals 2

    .prologue
    .line 943
    const-string v0, "lock_pattern_size"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 980
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 981
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 982
    .local v2, now:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    move-wide v0, v4

    .line 985
    .end local v0           #deadline:J
    :cond_1
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    :cond_0
    const/4 v0, 0x0

    .line 1034
    .end local v0           #nextAlarm:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getNextCalendarAlarm(J[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 36
    .parameter "lookahead"
    .parameter "calendars"
    .parameter "remindersOnly"

    .prologue
    .line 1044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1045
    .local v26, now:J
    add-long v20, v26, p1

    .line 1047
    .local v20, later:J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .local v34, where:Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 1049
    const-string v2, "hasAlarm=1"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_0
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    array-length v2, v0

    if-lez v2, :cond_4

    .line 1052
    if-eqz p4, :cond_1

    .line 1053
    const-string v2, " AND "

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_1
    const-string v2, "calendar_id in ("

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 1057
    aget-object v2, p3, v19

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    move-object/from16 v0, p3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    .line 1059
    const-string v2, ","

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1062
    :cond_3
    const-string v2, ") "

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .end local v19           #i:I
    :cond_4
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "title"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "begin"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "description"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "eventLocation"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "allDay"

    aput-object v5, v4, v2

    .line 1075
    .local v4, projection:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1076
    .local v12, TITLE_INDEX:I
    const/4 v9, 0x1

    .line 1077
    .local v9, BEGIN_TIME_INDEX:I
    const/4 v10, 0x2

    .line 1078
    .local v10, DESCRIPTION_INDEX:I
    const/4 v11, 0x3

    .line 1079
    .local v11, LOCATION_INDEX:I
    const/4 v8, 0x4

    .line 1081
    .local v8, ALL_DAY_INDEX:I
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "%d/%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    aput-object v35, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    aput-object v35, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1083
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1084
    .local v25, nextCalendarAlarm:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 1087
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "begin ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1090
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1092
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1093
    .local v33, title:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1094
    .local v14, begin:J
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1095
    .local v17, description:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1096
    .local v22, location:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    .line 1100
    .local v13, allDay:Z
    :goto_1
    if-eqz v13, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1101
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1102
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1103
    .local v23, nextBegin:J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v5, v2

    add-long/2addr v5, v14

    cmp-long v2, v23, v5

    if-gez v2, :cond_5

    .line 1104
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1105
    move-wide/from16 v14, v23

    .line 1106
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1107
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1108
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v13, 0x1

    .line 1113
    .end local v23           #nextBegin:J
    :cond_5
    :goto_2
    const/4 v2, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v25, v2

    .line 1117
    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, v32

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 1118
    .local v32, start:Ljava/util/Date;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    .local v28, sb:Ljava/lang/StringBuilder;
    if-eqz v13, :cond_c

    .line 1121
    new-instance v29, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const v5, 0x10400bf

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v29, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1126
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .end local v29           #sdf:Ljava/text/SimpleDateFormat;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lockscreen_calendar_show_location"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 1136
    .local v31, showLocation:I
    if-eqz v31, :cond_6

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1137
    packed-switch v31, :pswitch_data_0

    .line 1155
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lockscreen_calendar_show_description"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 1157
    .local v30, showDescription:I
    if-eqz v30, :cond_7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1160
    if-nez v31, :cond_f

    .line 1161
    const-string v2, ": "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :goto_5
    packed-switch v30, :pswitch_data_1

    .line 1184
    :cond_7
    :goto_6
    const/4 v2, 0x1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v25, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    .end local v13           #allDay:Z
    .end local v14           #begin:J
    .end local v17           #description:Ljava/lang/String;
    .end local v22           #location:Ljava/lang/String;
    .end local v28           #sb:Ljava/lang/StringBuilder;
    .end local v30           #showDescription:I
    .end local v31           #showLocation:I
    .end local v32           #start:Ljava/util/Date;
    .end local v33           #title:Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_9

    .line 1190
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1194
    :cond_9
    :goto_7
    return-object v25

    .line 1096
    .restart local v14       #begin:J
    .restart local v17       #description:Ljava/lang/String;
    .restart local v22       #location:Ljava/lang/String;
    .restart local v33       #title:Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1108
    .restart local v13       #allDay:Z
    .restart local v23       #nextBegin:J
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1128
    .end local v23           #nextBegin:J
    .restart local v28       #sb:Ljava/lang/StringBuilder;
    .restart local v32       #start:Ljava/util/Date;
    :cond_c
    :try_start_1
    const-string v2, "E"

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1129
    const-string v2, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1186
    .end local v13           #allDay:Z
    .end local v14           #begin:J
    .end local v17           #description:Ljava/lang/String;
    .end local v22           #location:Ljava/lang/String;
    .end local v28           #sb:Ljava/lang/StringBuilder;
    .end local v32           #start:Ljava/util/Date;
    .end local v33           #title:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1189
    if-eqz v16, :cond_9

    .line 1190
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 1140
    .restart local v13       #allDay:Z
    .restart local v14       #begin:J
    .restart local v17       #description:Ljava/lang/String;
    .restart local v22       #location:Ljava/lang/String;
    .restart local v28       #sb:Ljava/lang/StringBuilder;
    .restart local v31       #showLocation:I
    .restart local v32       #start:Ljava/util/Date;
    .restart local v33       #title:Ljava/lang/String;
    :pswitch_0
    const/16 v2, 0xa

    :try_start_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 1141
    .local v18, end:I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_e

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 1189
    .end local v13           #allDay:Z
    .end local v14           #begin:J
    .end local v17           #description:Ljava/lang/String;
    .end local v18           #end:I
    .end local v22           #location:Ljava/lang/String;
    .end local v28           #sb:Ljava/lang/StringBuilder;
    .end local v31           #showLocation:I
    .end local v32           #start:Ljava/util/Date;
    .end local v33           #title:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_d

    .line 1190
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 1144
    .restart local v13       #allDay:Z
    .restart local v14       #begin:J
    .restart local v17       #description:Ljava/lang/String;
    .restart local v18       #end:I
    .restart local v22       #location:Ljava/lang/String;
    .restart local v28       #sb:Ljava/lang/StringBuilder;
    .restart local v31       #showLocation:I
    .restart local v32       #start:Ljava/util/Date;
    .restart local v33       #title:Ljava/lang/String;
    :cond_e
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1149
    .end local v18           #end:I
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1163
    .restart local v30       #showDescription:I
    :cond_f
    const-string v2, " - "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1169
    :pswitch_2
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 1170
    .restart local v18       #end:I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_10

    .line 1171
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1173
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1178
    .end local v18           #end:I
    :pswitch_3
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 1137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1166
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPowerButtonInstantlyLocks()Z
    .locals 2

    .prologue
    .line 1351
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public isBiometricWeakEverChosen()Z
    .locals 2

    .prologue
    .line 362
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 847
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 849
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v2

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 858
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 863
    goto :goto_0
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 884
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 885
    .local v0, currentFlag:J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .locals 15

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 813
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 814
    .local v3, mode:J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 815
    .local v1, backupMode:J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_0

    cmp-long v8, v3, v11

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_3

    :cond_0
    move v5, v7

    .line 819
    .local v5, passwordEnabled:Z
    :goto_0
    cmp-long v8, v1, v13

    if-eqz v8, :cond_1

    cmp-long v8, v1, v11

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_4

    :cond_1
    move v0, v7

    .line 824
    .local v0, backupEnabled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    :goto_2
    return v7

    .end local v0           #backupEnabled:Z
    .end local v5           #passwordEnabled:Z
    :cond_3
    move v5, v6

    .line 815
    goto :goto_0

    .restart local v5       #passwordEnabled:Z
    :cond_4
    move v0, v6

    .line 819
    goto :goto_1

    .restart local v0       #backupEnabled:Z
    :cond_5
    move v7, v6

    .line 824
    goto :goto_2
.end method

.method public isLockPatternEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 832
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v0, v1

    .line 836
    .local v0, backupEnabled:Z
    :goto_0
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0           #backupEnabled:Z
    :cond_1
    move v0, v2

    .line 832
    goto :goto_0

    .restart local v0       #backupEnabled:Z
    :cond_2
    move v1, v2

    .line 836
    goto :goto_1
.end method

.method public isLockScreenDisabled()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPatternEverChosen()Z
    .locals 2

    .prologue
    .line 352
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 2

    .prologue
    .line 994
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1271
    .local v2, mode:J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    move v1, v4

    .line 1272
    .local v1, isPattern:Z
    :goto_0
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_0
    move v0, v4

    .line 1276
    .local v0, isPassword:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1278
    .local v4, secure:Z
    :cond_2
    :goto_2
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_3
    move v1, v5

    .line 1271
    goto :goto_0

    .restart local v1       #isPattern:Z
    :cond_4
    move v0, v5

    .line 1272
    goto :goto_1

    .restart local v0       #isPassword:Z
    :cond_5
    move v4, v5

    .line 1276
    goto :goto_2
.end method

.method public isShowErrorPath()Z
    .locals 2

    .prologue
    .line 936
    const-string v0, "lock_pattern_show_error_path"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 2

    .prologue
    .line 913
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisibleDotsEnabled()Z
    .locals 2

    .prologue
    .line 928
    const-string v0, "lock_pattern_dotsvisible"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 2

    .prologue
    .line 899
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .parameter "password"

    .prologue
    .line 783
    if-nez p1, :cond_0

    .line 784
    const/4 v2, 0x0

    .line 796
    :goto_0
    return-object v2

    .line 786
    :cond_0
    const/4 v0, 0x0

    .line 787
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 789
    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 790
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 791
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 792
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 793
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_0
    move-exception v1

    .line 794
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 246
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 248
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 223
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 3

    .prologue
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    return-void
.end method

.method public resumeCall()Z
    .locals 2

    .prologue
    .line 1324
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1326
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    const/4 v1, 0x1

    .line 1332
    :goto_0
    return v1

    .line 1329
    :catch_0
    move-exception v1

    .line 1332
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 1
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 568
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .locals 28
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"

    .prologue
    .line 580
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v22

    .line 582
    .local v22, hash:[B
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/ILockSettings;->setLockPassword([BI)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 584
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v24

    .line 585
    .local v24, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_8

    .line 587
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 592
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v21

    .line 593
    .local v21, computedQuality:I
    if-nez p3, :cond_6

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 595
    const-string v3, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 596
    if-eqz v21, :cond_5

    .line 597
    const/4 v5, 0x0

    .line 598
    .local v5, letters:I
    const/4 v6, 0x0

    .line 599
    .local v6, uppercase:I
    const/4 v7, 0x0

    .line 600
    .local v7, lowercase:I
    const/4 v8, 0x0

    .line 601
    .local v8, numbers:I
    const/4 v9, 0x0

    .line 602
    .local v9, symbols:I
    const/4 v10, 0x0

    .line 603
    .local v10, nonletter:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_3

    .line 604
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 605
    .local v20, c:C
    const/16 v3, 0x41

    move/from16 v0, v20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    move/from16 v0, v20

    if-gt v0, v3, :cond_0

    .line 606
    add-int/lit8 v5, v5, 0x1

    .line 607
    add-int/lit8 v6, v6, 0x1

    .line 603
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 608
    :cond_0
    const/16 v3, 0x61

    move/from16 v0, v20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    move/from16 v0, v20

    if-gt v0, v3, :cond_1

    .line 609
    add-int/lit8 v5, v5, 0x1

    .line 610
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 611
    :cond_1
    const/16 v3, 0x30

    move/from16 v0, v20

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    move/from16 v0, v20

    if-gt v0, v3, :cond_2

    .line 612
    add-int/lit8 v8, v8, 0x1

    .line 613
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 615
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 616
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 619
    .end local v20           #c:C
    :cond_3
    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 639
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v23           #i:I
    :goto_2
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 640
    .local v25, passwordHistory:Ljava/lang/String;
    if-nez v25, :cond_4

    .line 641
    new-instance v25, Ljava/lang/String;

    .end local v25           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v25 .. v25}, Ljava/lang/String;-><init>()V

    .line 643
    .restart local v25       #passwordHistory:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v26

    .line 644
    .local v26, passwordHistoryLength:I
    if-nez v26, :cond_7

    .line 645
    const-string v25, ""

    .line 654
    :goto_3
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v21           #computedQuality:I
    .end local v24           #keyStore:Landroid/security/KeyStore;
    .end local v25           #passwordHistory:Ljava/lang/String;
    .end local v26           #passwordHistoryLength:I
    :goto_4
    return-void

    .line 624
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v21       #computedQuality:I
    .restart local v24       #keyStore:Landroid/security/KeyStore;
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 664
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v21           #computedQuality:I
    .end local v24           #keyStore:Landroid/security/KeyStore;
    :catch_0
    move-exception v27

    .line 666
    .local v27, re:Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock password "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 630
    .end local v27           #re:Landroid/os/RemoteException;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v21       #computedQuality:I
    .restart local v24       #keyStore:Landroid/security/KeyStore;
    :cond_6
    :try_start_1
    const-string v3, "lockscreen.password_type"

    const-wide/32 v11, 0x8000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 631
    const-string v3, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 633
    const v12, 0x8000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto :goto_2

    .line 647
    .restart local v25       #passwordHistory:Ljava/lang/String;
    .restart local v26       #passwordHistoryLength:I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 650
    const/4 v3, 0x0

    move-object/from16 v0, v22

    array-length v4, v0

    mul-int v4, v4, v26

    add-int v4, v4, v26

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_3

    .line 658
    .end local v21           #computedQuality:I
    .end local v25           #passwordHistory:Ljava/lang/String;
    .end local v26           #passwordHistoryLength:I
    :cond_8
    invoke-virtual/range {v24 .. v24}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 659
    invoke-virtual/range {v24 .. v24}, Landroid/security/KeyStore;->reset()Z

    .line 661
    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 469
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .locals 12
    .parameter
    .parameter "isFallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v9

    .line 480
    .local v9, hash:[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v9, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPattern([BI)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    .local v10, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const/high16 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 509
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #keyStore:Landroid/security/KeyStore;
    :goto_0
    return-void

    .line 492
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #keyStore:Landroid/security/KeyStore;
    :cond_0
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #keyStore:Landroid/security/KeyStore;
    :catch_0
    move-exception v11

    .line 507
    .local v11, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock pattern "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v11           #re:Landroid/os/RemoteException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #keyStore:Landroid/security/KeyStore;
    :cond_1
    :try_start_1
    invoke-virtual {v10}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-virtual {v10}, Landroid/security/KeyStore;->reset()Z

    .line 503
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public savedPasswordExists()Z
    .locals 3

    .prologue
    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 341
    :goto_0
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists()Z
    .locals 3

    .prologue
    .line 327
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 329
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 870
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, currentFlag:J
    if-eqz p1, :cond_0

    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .local v2, newFlag:J
    :goto_0
    const-string v4, "lock_biometric_weak_flags"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void

    .end local v2           #newFlag:J
    :cond_0
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2       #newFlag:J
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 230
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 231
    iput p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    .line 235
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system process can set the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLockBeforeUnlock(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1360
    const-string v0, "lock_before_unlock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1361
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 892
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 893
    return-void
.end method

.method public setLockPatternSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 950
    const-string v0, "lock_pattern_size"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setInteger(Ljava/lang/String;I)V

    .line 951
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->PATTERN_SIZE:I

    .line 952
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .locals 3
    .parameter "disable"

    .prologue
    .line 430
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 431
    return-void

    .line 430
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    .line 969
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 1006
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1007
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1347
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1348
    return-void
.end method

.method public setShowErrorPath(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 932
    const-string v0, "lock_pattern_show_error_path"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 933
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 920
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 921
    return-void
.end method

.method public setVisibleDotsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 924
    const-string v0, "lock_pattern_dotsvisible"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 925
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 906
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 907
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .locals 5
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/4 v4, 0x0

    .line 1296
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 1297
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1304
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1306
    const v2, 0x1040327

    .line 1307
    .local v2, textId:I
    const v1, 0x1080084

    .line 1308
    .local v1, phoneCallIcon:I
    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1314
    .end local v1           #phoneCallIcon:I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1315
    .end local v2           #textId:I
    :goto_1
    return-void

    .line 1299
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1310
    :cond_1
    const v2, 0x1040326

    .line 1311
    .restart local v2       #textId:I
    const v0, 0x10802c7

    .line 1312
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public updateLockPatternSize()V
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize()I

    move-result v0

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->PATTERN_SIZE:I

    .line 961
    return-void
.end method

.method public usingBiometricWeak()Z
    .locals 4

    .prologue
    .line 693
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 695
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
