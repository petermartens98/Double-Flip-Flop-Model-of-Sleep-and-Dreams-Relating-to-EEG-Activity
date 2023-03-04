# Double-Flip-Flop-Model-of-Sleep-and-Dreams-in-Relation-to-EEG-Activity

### Project Audio: https://www.youtube.com/watch?v=-V3ur4P0AGI

# Project Summary

Sleep and dreams have been studied both biologically and psychologically for many
years now, making a large niche in the literature of consciousness and altered states. Along with
this research on where, why, and when sleep occurs within the brain, there have been a multitude
of attempts at modeling sleep mathematically, to predict sleep patterns and how disorders/other
dysfunctions may result in critical alterations.

One of the more prominent models of the literature is known as the Flip-Flop model
(Rempe, Best, & Terman, 2009), where one state flips into another. This model shows the
moments when the brain switches from making a beta (wake) brain wave pattern to a delta, and
eventually theta wave pattern. The interest of this paper lies in the modeling of the neurons and
their peers, creating the waves that are studied with EEG. After observing some of the patterns of
frequency between alpha and theta waves, we are interested in what could modulate between the
states of NREM, REM, and being awake (Kumar, Rupesh, et al.,2012)(Rempe, Best, & Terman,
2009).

Thus, we modeled firing of neurons when in the alpha, beta, theta, and
delta condition using observations of their general wave patterns. As brain waves are the
frequency of firings among neurons in the brain, we are using the general hertz range as a base
for how they would fire. The higher the wave value, the higher the firing rate. To accomplish
this, we first used a model of output from Izkevhich (Izhikevich, 2003) and created it in Matlab,
then recreated it in XPP. In order to achieve the periodic/random nature of the
firings, we utilized a cosine function to constantly alter the synaptic input, changing it from
excitatory to inhibitory over time.

While the model does not directly simulate the output seen in EEG tests due to the lack of
randomness, the model does display periodic increases in firing, and recreates the Hz found for
each wave depending on the altered values for two variables: the wave one wants to recreate, and
the amount of synaptic voltage. Thus, following along with the Flip-Flop model, it would seem
that some mechanism must be at play to indicate that there is a wave change, resulting in a
chemical change that alters the voltage of the synaptic firings, as well as the types of charges that
are sent. This is most likely done via neurotransmitters, and is explored further in the discussion
section (Quant Neruo Project.pdf).

# Neuronal Firing Model (Created in MATLAB)

# Alpha Waves

### Starting firing rate of an Alpha wave 
![image](https://user-images.githubusercontent.com/87671757/222845091-9624a9e2-eb38-4524-b894-0b4ac0191ffd.png)

### XPP modeled firing pattern for an Alpha Wave, shown at 10000 ms. Inhibition wave starts a little after 1200 ms, then again around 3600 and so on. 
![image](https://user-images.githubusercontent.com/87671757/222845443-9e0acec2-030e-4f96-a2af-3f9d7441c729.png)

### Alpha wave pattern exhibited at a scale of 1000 ms 
![image](https://user-images.githubusercontent.com/87671757/222845742-9895c527-89e5-46a2-90b7-5faa974e2d40.png)

### Nullcline and integration for alpha waves. Notably more activity due to a longer time spent in an excitatory state due to the frequency of firing shifting with the modulation of periodic variable e.Whenever the model attempts to settle due to the inhibitory wave, it is pushed back into an excitatory state as the nullcline shifts with the increase of isyn. Then, as e decreases, isyn eventually becomes negative or 0, inducing an inhibitory state. 
![image](https://user-images.githubusercontent.com/87671757/222849300-78bdc948-b4a8-443e-b548-61ea50f822e6.png)

# ------------------------------------------------------------

# Theta Waves

### Starting firing rate of an Theta wave 
![image](https://user-images.githubusercontent.com/87671757/222845122-1bb68d76-2c46-4399-bc5b-5a36d46c7f98.png)

### Theta wave pattern with inhibition wave that hits around 550 until around 1100, cycles. 
![image](https://user-images.githubusercontent.com/87671757/222848180-7388b020-2eea-4b68-b355-290f6c55edb2.png)

### Theta wave pattern exhibited at a scale of 1000 ms 
![image](https://user-images.githubusercontent.com/87671757/222848293-e4cc8148-a4a6-43c8-9f49-baf6988e353e.png)

### Nullcline and integration for theta waves. Less activity than alpha due to a shorter time spent in an excitatory state due to the frequency of firing shifting with the modulation of periodic variable e. Whenever the model attempts to settle due to the inhibitory wave, it is pushed back into an excitatory state as the nullcline shifts with the increase of isyn. Then, as e decreases, isyn eventually becomes negative or 0, inducing an inhibitory state. 
![image](https://user-images.githubusercontent.com/87671757/222847299-0a84a250-b127-4a80-b75f-4b17277caa73.png)

# ------------------------------------------------------------

# Delta Waves

### Starting firing rate of an Delta wave 
![image](https://user-images.githubusercontent.com/87671757/222845132-516d2811-9c65-4365-9a78-1b3e5a3b360a.png)

### Delta wave pattern with inhibition wave that hits around 300 until around 600, then cycles. 
![image](https://user-images.githubusercontent.com/87671757/222848481-deebd360-2446-490d-83a0-ba28b532851e.png)

### Delta wave pattern exhibited at a scale of 1000 ms 
![image](https://user-images.githubusercontent.com/87671757/222848685-08643f06-f45e-4b80-8a44-5340e2596199.png)

### Nullcline and integration for delta waves. Lowest activity due to having the shortest time spent in an excitatory state due to the frequency of firing shifting with the modulation of periodic variable e. Whenever the model attempts to settle due to the inhibitory wave, it is pushed back into an excitatory state as the nullcline shifts with the increase of isyn. Then, as e decreases, isyn eventually becomes negative or 0, inducing an inhibitory state. 
![image](https://user-images.githubusercontent.com/87671757/222846731-ef01bf47-56c6-4d35-8a32-a336eb04b522.png)

# ------------------------------------------------------------

# Beta Waves

### Starting firing rate of an Beta wave 
![image](https://user-images.githubusercontent.com/87671757/222845156-b4ea8f13-e5af-4fe1-8134-d1cc98d3b1bf.png)

### Belta wave pattern with inhibition wave that hits around 1900 until around 3800, then cycles. 

![image](https://user-images.githubusercontent.com/87671757/222849027-bd9fa9f2-6649-4d55-971c-19bcb21724f8.png)

### Beta wave pattern exhibited at a scale of 1000 ms 

![image](https://user-images.githubusercontent.com/87671757/222849089-7709115c-ad9e-4286-a6c6-846b89f72bae.png)

### Nullcline and integration for beta waves. highest activity due to having the longest time spent in an excitatory state due to the frequency of firing shifting with the modulation of periodic variable e. Whenever the model attempts to settle due to the inhibitory wave, it is pushed back into an excitatory state as the nullcline shifts with the increase of isyn. Then, as e decreases, isyn eventually becomes negative or 0, inducing an inhibitory state. 
![image](https://user-images.githubusercontent.com/87671757/222846332-0f5f11ba-139d-44b2-8569-b54a0d172c83.png)
