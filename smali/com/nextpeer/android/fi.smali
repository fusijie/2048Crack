.class final Lcom/nextpeer/android/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ex;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fi;->a:Lcom/nextpeer/android/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/nextpeer/android/av;->b()Lcom/nextpeer/android/av;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not fetch the friends list as the friends service is unavailable"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/fi;->a:Lcom/nextpeer/android/ex;

    iget-object v2, p0, Lcom/nextpeer/android/fi;->a:Lcom/nextpeer/android/ex;

    invoke-virtual {v2}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_fetching_action_description:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ex;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/fi;->a:Lcom/nextpeer/android/ex;

    invoke-static {v1}, Lcom/nextpeer/android/ex;->b(Lcom/nextpeer/android/ex;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/nextpeer/android/fi;->a:Lcom/nextpeer/android/ex;

    invoke-static {v1}, Lcom/nextpeer/android/ex;->g(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/ex$ab;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/nextpeer/android/fi;->a:Lcom/nextpeer/android/ex;

    invoke-static {v1}, Lcom/nextpeer/android/ex;->h(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/ex$ad;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lcom/nextpeer/android/av;->c()V

    goto :goto_0
.end method
