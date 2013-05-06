.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 119
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 120
    invoke-virtual {p3}, Landroid/view/KeyEvent;->startTracking()V

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/LockScreen;->handleKeyLongPress(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
