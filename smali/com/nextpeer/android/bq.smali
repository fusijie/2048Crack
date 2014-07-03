.class final Lcom/nextpeer/android/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/bp;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/bq;->a:Lcom/nextpeer/android/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nextpeer/android/bq;->a:Lcom/nextpeer/android/bp;

    iget-object v1, p0, Lcom/nextpeer/android/bq;->a:Lcom/nextpeer/android/bp;

    invoke-static {v1}, Lcom/nextpeer/android/bp;->a(Lcom/nextpeer/android/bp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/bp;->a(Lcom/nextpeer/android/bp;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nextpeer/android/bq;->a:Lcom/nextpeer/android/bp;

    invoke-static {v0}, Lcom/nextpeer/android/bp;->a(Lcom/nextpeer/android/bp;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x41dfffffffc00000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/nextpeer/android/bq;->a:Lcom/nextpeer/android/bp;

    invoke-static {v2}, Lcom/nextpeer/android/bp;->b(Lcom/nextpeer/android/bp;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
