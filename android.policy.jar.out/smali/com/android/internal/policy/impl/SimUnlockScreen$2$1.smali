.class Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$2;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$2;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimCheckInProgress:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 270
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104031e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$802(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_0
.end method
