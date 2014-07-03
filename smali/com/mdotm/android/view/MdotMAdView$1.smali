.class Lcom/mdotm/android/view/MdotMAdView$1;
.super Ljava/lang/Object;
.source "MdotMAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMAdView;->showAdIdUsageAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMAdView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMAdView$1;->this$0:Lcom/mdotm/android/view/MdotMAdView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMAdView$1;->this$0:Lcom/mdotm/android/view/MdotMAdView;

    .line 93
    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    const-string v2, "mdotm"

    .line 96
    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 99
    const-string v2, "AdNotified"

    .line 100
    const/4 v3, 0x1

    .line 99
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method
