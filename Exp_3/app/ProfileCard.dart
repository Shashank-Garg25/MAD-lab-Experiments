import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Card",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen.shade400,
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.lightBlueAccent ),
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            getSquareCard(),
            getImage(),
          ],
        ),
      ),
    );
  }
  Container getSquareCard() {
    return Container(
      width: 350,
      height: 350,
      margin: EdgeInsets.all(60.50),
      decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              Text(
                "Harshit Jain",
                style: TextStyle(
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
          Text(
            "I am pursuing B.Tech from ",
          ),
          Text("Poornima College of Engineering,Jaipur"),
          Text(""),
        ],
      ),
    );
  }
  Container getImage() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.pinkAccent,
          border: Border.all(color: Colors.pinkAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          image: DecorationImage(
              image: NetworkImage(
                  "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAHBhIIBxMVFhIVExkbFRcXFx0aHxofHhshGB0aGh8bHSogGB4mJx4WITEhJTUtLi4uICAzODMtOCkxOisBCgoKDg0OGxAQGzAlICUzLS4tLTcuLy0tKy0vMi0vMistKy0uLS0tLzIwLTc1Ny8tLS0tLi0tLy0tLS0tNy03Lf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAwEBAAMAAAAAAAAAAAAABQYHBAMBAgj/xABGEAABAwMDAQYDBAcFBAsAAAABAAIDBAURBhIhMQcTIkFRYTJxgRQVI0IWNlJykaGyYnOxweMXQ6PwMzQ1U2R0gqLR0uH/xAAZAQEAAwEBAAAAAAAAAAAAAAAAAQIEAwX/xAArEQEAAgIBAgUDAwUAAAAAAAAAAQIDERIhMQQTQVHwImFxFIGRQqHB0eH/2gAMAwEAAhEDEQA/AMOREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBEVg0xVUe11DfItzXuGx7QdzT0Iy3xYPGAM8+XKre3GN62msbnSvrrtdvfdK9lHTDxOPXyA8yfYKc1npqKwd2+mlc4SbsMcBuaG4GS4cOGTjoPP0Uv2cCB1JNHA/ZVuaQHEZ2jHhc0Z8QB5Pvj055XzR5fOrpXFPPjKsaosMmnrqaOflpG6N2MbmnofYjoR6hRC1XXFLHRaHgo7/MJKxg/Bc0ZJ55BzyWYwC44zhpxlUvROnWalupo5pe72s3YDclwBwQOcA8+/yTHmicfK3p6+/wBy+PV+MK8it2rZLfbqY2axRO7wPHezSjLjj8oz8POCdoAP1VRXWlucb0pavGdCIiuqIiICIiAiIgIiICIiAiIoBERAREQEREBERAXRb6o0NdHVxjJY8OAPng5wudTVg0+b6TFRzRCXyjfuaT8jtIKreYiPq7JrEzPReNSttl1pI6q5zNjcY2924El+08gbADkZJ6j15UTabzZrE7NKyolkH+9LGA/+nc7w+fQD6ry0nBAa19FdKB75qdru9MYD/C04JfG7gluRy3kj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qMjJBw9mwna7zbkcHByMrgv3abSttTxZi905GGZYQG5/Mc9cenrhTk83LaJ4an3RThSJ+rcOTsut7rTqSvt8xDnRta0lp4PiPPt8vLopHU+qKq264pbTSlvdSmHcC0E+OQtOD5cKm9nGpYLFXVE92c78RrcEAuJOSSSvTUOoKa76/o7jSO/CY6AOc8bcbZS4k58gD1XW2KZzTNo3Gv76Ui8RjiIn1XbtYldFo9wjJG6VgdjzHJwfbgKT09+o0H/kx/QontbOdH5HTvo/8HKOs+vKCl0vFQTPf3jacMI2HGduOq4Vpa2GOMerrNojJO59Gaae/wC36b+/i/rC2LtW/U2X+8j/AKljdieI73TvkIAE8ZJJwAA8ZJ9FverLL+kNjkt7H7C7Ba7GRkHIz7FaPFTFctJlywRuloh+dkXdebVNZbg6huDdr2/UEeRB8wVwrfExMbhlmNCIikEREBERAREUIEREBERAUxbNRT262T2xh3QzMLXMP5SfzN9D/I/4Q6KJrFo1KYmY7CIisCIiArNDresh02LJE7AHAkydwZ+wD5D3644VZRUtSLd4TFpjsIiKyBERSJh+o55dO/cc53RB7XMJ6sxnwj+zz08lDoirFYjsTO+4rrorXstjLaO4ZkpugH5o/wB3PUf2T9MedKRVvjreNWTW01ncLZ2l3CG56jFXQPD43QMwR9eD5g+x5CqaIppThWKx6Frcp2IiK6BERAREQERFCBERAREQERFIIiIkREQEREBERAREQEREBERAREQEREBERAREQERFCBERAREQERFIIiIkREQEREBERAREQEREBERAREQEREBERAREQERFCBERAREQERFIIiIkREQEREBERAREQEREBERAREQEREBERAREQf/Z"),
              fit: BoxFit.fill)),
    );
  }
}
