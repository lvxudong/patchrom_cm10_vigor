.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 3
    .parameter "isForgotten"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 306
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 377
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 368
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 372
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 384
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 385
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 389
    .local v1, failedAttempts:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_1

    move v5, v6

    .line 392
    .local v5, usingPattern:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 395
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 398
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_2

    sub-int v3, v2, v1

    .line 402
    .local v3, remainingBeforeWipe:I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_4

    .line 407
    if-lez v3, :cond_3

    .line 408
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V
    invoke-static {v6, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V

    .line 432
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 433
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    .end local v5           #usingPattern:Z
    :cond_1
    move v5, v7

    .line 389
    goto :goto_0

    .line 398
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v5       #usingPattern:Z
    :cond_2
    const v3, 0x7fffffff

    goto :goto_1

    .line 411
    .restart local v3       #remainingBeforeWipe:I
    :cond_3
    const-string v6, "LockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
    invoke-static {v6, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    goto :goto_2

    .line 415
    :cond_4
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_6

    move v4, v6

    .line 417
    .local v4, showTimeout:Z
    :goto_3
    #if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 418
    const/16 v8, 0xf

    if-ne v1, v8, :cond_7

    .line 419
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 420
    const/4 v4, 0x0

    .line 428
    :cond_5
    :goto_4
    if-eqz v4, :cond_0

    .line 429
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_2

    .end local v4           #showTimeout:Z
    :cond_6
    move v4, v7

    .line 415
    goto :goto_3

    .line 421
    .restart local v4       #showTimeout:Z
    :cond_7
    const/16 v8, 0x14

    if-lt v1, v8, :cond_5

    .line 422
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 423
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v8

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v6, v8, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 425
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 441
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 354
    :cond_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->pokeWakelock(I)V

    .line 355
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 364
    :goto_0
    return-void

    .line 359
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
