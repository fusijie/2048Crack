.class Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;
    .locals 2

    new-instance v0, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/Parcel;Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;
    .locals 1

    new-array v0, p1, [Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType$1;->newArray(I)[Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    move-result-object v0

    return-object v0
.end method